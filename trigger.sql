--1번
CREATE OR REPLACE TRIGGER trgCheckPeriodSum
BEFORE INSERT OR UPDATE ON tblSubjectList
FOR EACH ROW
DECLARE
    v_seq_curri number;
    v_period_total NUMBER;
    v_period_now NUMBER;
    v_period NUMBER;
BEGIN
    v_seq_curri := :new.seq_curriculum;
    -- 해당 과정의 총 period를 가져옵니다.
    SELECT period INTO v_period_total
    from tblcurriculum c
        inner join tblcourseperiod cp
            on c.seq_courseperiod = cp.seq_courseperiod
                where c.seq_curriculum = v_seq_curri;
    
    --현재 period 합을 가져옵니다.
    SELECT SUM(period) into v_period_now
    from tblSubjectList sl
    inner join tblSubject s
        on sl.seq_subject = s.seq_subject
            where sl.seq_curriculum = v_seq_curri;
            
    --추가한 과목의 기간을 가져옵니다.
    select period into v_period from tblsubject where seq_subject = :NEW.seq_subject;
    
    -- 새로운 코스 기간이나 업데이트된 코스 기간의 period 합이 tblsubject의 period 합과 같은지 확인합니다.
    IF v_period_total < v_period_now+v_period THEN
        RAISE_APPLICATION_ERROR(-20001, '과정 총 기간을 확인해주세요.');
    END IF;
END;
/

--2번
-- 점수 배점 용
CREATE OR REPLACE TRIGGER trgCheckPoints
BEFORE INSERT ON tblTestInfo
FOR EACH ROW
DECLARE
    v_total_points NUMBER;
BEGIN
    -- writtenpoints, practicalpoints, attendancepoints의 합을 계산합니다.
    v_total_points := :NEW.writtenpoints + :NEW.practicalpoints + :NEW.attendancepoints;

    IF :NEW.writtenpoints >= 40 THEN
        RAISE_APPLICATION_ERROR(-20002, '최대 40까지 입력 가능합니다.');
    END IF;

    IF :NEW.practicalpoints >= 40 THEN
        RAISE_APPLICATION_ERROR(-20003, '최대 40까지 입력 가능합니다.');
    END IF;

    IF :NEW.attendancepoints >= 30 THEN
        RAISE_APPLICATION_ERROR(-20004, '최대 30까지 입력 가능합니다.');
    END IF;

    -- writtenpoints, practicalpoints, attendancepoints의 합이 100을 초과하는 경우 오류를 발생시킵니다.
    IF v_total_points > 100 THEN
        RAISE_APPLICATION_ERROR(-20005, '총점이 100을 초과할 수 없습니다.');
    END IF;
END;
/

-- 3번 
-- 학생 성적 insert 용 
CREATE OR REPLACE TRIGGER trgTraineeCheckPoints
BEFORE INSERT ON tblgrades
FOR EACH ROW
DECLARE
    v_total_grade NUMBER;
    v_seq_testinfo number;
    v_writtenpoints number;
    v_practicalpoints number;
    v_attendancepoints number;
BEGIN
    -- writtengrade, practicalgrade, attendancegrade의 합을 계산합니다.
    v_total_grade := :NEW.writtengrade + :NEW.practicalgrade + :NEW.attendancegrade;
    v_seq_testinfo := :new.seq_testinfo;
    
    select writtenpoints, practicalpoints, v_attendancepoints into v_writtenpoints, v_practicalpoints, v_attendancepoints
    from tbltestinfo where seq_testinfo = v_seq_testinfo;

    IF :NEW.writtengrade > v_writtenpoints THEN
        RAISE_APPLICATION_ERROR(-20006, '최대 배점까지만 입력 가능합니다.');
    END IF;
    
    IF :NEW.practicalgrade > v_practicalpoints THEN
        RAISE_APPLICATION_ERROR(-20007, '최대 배점까지만 입력 가능합니다.');
    END IF;
    
    IF :NEW.attendancegrade > v_attendancepoints THEN
        RAISE_APPLICATION_ERROR(-20008, '최대 배점까지만 입력 가능합니다.');
    END IF;

    -- writtengrade, practicalgrade, attendancegrade의 합이 100을 초과하는 경우 오류를 발생시킵니다.
    IF v_total_grade > 100 THEN
        RAISE_APPLICATION_ERROR(-20009, '총점이 100을 초과할 수 없습니다.');
    END IF;
END;
/


-- 4번 
-- 수료자만 교육 과정 과정 평가를 할 수 있으므로 수료 완료인지 확인하고 수료 완료가 아닐 경우 insert하지 못하도록 하는 트리거
CREATE OR REPLACE TRIGGER trgAllowEvaluation
BEFORE INSERT ON tblcurriculumevaluation
FOR EACH ROW
DECLARE
    v_status VARCHAR2(20);
BEGIN
    -- tbltraineelist에서 해당 trainee의 status를 가져옵니다.
    SELECT status INTO v_status
    FROM tbltraineelist
    WHERE seq_traineelist = :NEW.seq_traineelist;

    -- status가 '수료'인 경우에만 데이터를 삽입할 수 있습니다.
    IF v_status <> '수료' THEN
        RAISE_APPLICATION_ERROR(-20010, '수료 상태일 때만 평가를 입력할 수 있습니다.');
    END IF;
END;
/

-- 5번
-- 성적은 종료 후 입력이 되니까 그 전에 입력 하지 못하도록 하는 트리거 
CREATE OR REPLACE TRIGGER trgCheckEnddate
BEFORE INSERT ON tblGrades
FOR EACH ROW
DECLARE
    v_enddate DATE;
BEGIN
    -- tblOpensubjectList에서 해당 과목의 종료일(enddate)을 가져옵니다.
    SELECT osl.enddate INTO v_enddate
    from tblTestInfo ti
        inner join tblOpenSubjectList osl
            on ti.seq_opensubjectlist = osl.seq_opensubjectlist
                where ti.seq_testinfo = :NEW.seq_testInfo;
    
    -- 종료일(enddate) 이전에 성적 입력 시도시 차단
    IF v_enddate > SYSDATE THEN
        RAISE_APPLICATION_ERROR(-20011, '과목 종료일 이후에만 시험 정보를 삽입할 수 있습니다.');
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20012, '해당 과목 ID가 tblOpensubjectList에 존재하지 않습니다.');
END;
/

-- 6번
-- 중도탈락 된 학생은 중도탈락 날짜 이후 더 이상 성적 입력을 할 수 없음에 대한 트리거
CREATE OR REPLACE TRIGGER trgCheckDropout
BEFORE INSERT OR UPDATE ON tblGrades
FOR EACH ROW
DECLARE
    v_status VARCHAR2(20);
    v_day DATE;
    v_writtendate date;
    v_practicaldate date;
BEGIN
    -- tbltraineelist에서 해당 trainee의 status와 day 값을 가져옵니다.
    SELECT status, day INTO v_status, v_day
    FROM tbltraineelist
        WHERE seq_traineelist = :new.seq_traineelist;
        
    --writtendate와 practicaldate 값을 가져와서 비교합니다.
    select writtendate, practicaldate into v_writtendate, v_practicaldate from tblTestInfo where seq_testinfo = :new.seq_testinfo;
    
    -- status가 '중도탈락'이고, 시험 날짜가 중도탈락 날짜 이후면 성적을 삽입 불가
    IF v_status = '중도탈락' and (v_writtendate > v_day OR v_practicaldate > v_day)
        THEN RAISE_APPLICATION_ERROR(-20013, '중도탈락 상태일 때는 해당 날짜의 성적을 삽입할 수 없습니다.');
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20014, '해당 trainee_id가 tbltraineelist에 존재하지 않습니다.');
END;
/

-- 7번 출결 인정 서류 관리 > 출석 인정 상태로 변했을 때 출결 상태의 번호가 1로 변하는 트리거
-- 프로시저 > 트리거로 변환
create or replace trigger trgUpdateAttendance
after update of admitattendance on tblAttendancePapers
for each row
begin
    if :new.admitattendance = '출석 인정' then
        update tblAttendance a
        set a.seq_attendanceStatus = 1
        where a.seq_traineeList = :new.seq_traineeList and a.day = :new.day;
    end if;
end;
/