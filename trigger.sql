--1번
CREATE OR REPLACE TRIGGER trgCheckPeriodSum
BEFORE INSERT OR UPDATE ON tblcourseperiod
FOR EACH ROW
DECLARE
    v_period_sum NUMBER;
BEGIN
    -- tblsubject 테이블에서 period의 합을 계산합니다.
    SELECT SUM(period) INTO v_period_sum
    FROM tblsubject;
    
    -- 새로운 코스 기간이나 업데이트된 코스 기간의 period 합이 tblsubject의 period 합과 같은지 확인합니다.
    IF :NEW.period != v_period_sum THEN
        RAISE_APPLICATION_ERROR(-20001, 'tblsubject 테이블의 period 값의 합과 일치해야 합니다.');
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
BEFORE INSERT ON tblTestInfo
FOR EACH ROW
DECLARE
    v_enddate DATE;
BEGIN
    -- tblOpensubjectList에서 해당 과목의 종료일(enddate)을 가져옵니다.
    SELECT enddate INTO v_enddate
    FROM tblOpensubjectList
    WHERE seq_opensubjectlist = :NEW.seq_opensubjectlist;
    
    -- 종료일(enddate) 이후에만 삽입을 허용합니다.
    IF v_enddate IS NOT NULL AND v_enddate <= SYSDATE THEN
        RAISE_APPLICATION_ERROR(-20011, '과목 종료일 이후에만 시험 정보를 삽입할 수 있습니다.');
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20012, '해당 과목 ID가 tblOpensubjectList에 존재하지 않습니다.');
END;
/


-- 6번
-- 중도탈락 된 학생은 중도탈락 날짜 이후 더 이상 성적 입력을 할 수 없음에 대한 트리거
CREATE OR REPLACE TRIGGER trgCheckMidtermExit
BEFORE INSERT OR UPDATE ON tblTestInfo
FOR EACH ROW
DECLARE
    v_status VARCHAR2(20);
    v_day DATE;
BEGIN
    -- tbltraineelist에서 해당 trainee의 status와 day 값을 가져옵니다.
    SELECT status, day INTO v_status, v_day
    FROM tbltraineelist
    WHERE seq_traineelist = seq_traineelist;

    -- status가 '중도탈락'인 경우에만 성적을 삽입할 수 있습니다.
    IF v_status = '중도탈락' THEN
        -- writtendate와 practicaldate 값을 가져와서 비교합니다.
        IF (:NEW.writtendate > v_day OR :NEW.practicaldate > v_day) THEN
            RAISE_APPLICATION_ERROR(-20013, '중도탈락 상태일 때는 해당 날짜의 성적을 삽입할 수 없습니다.');
        END IF;
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20014, '해당 trainee_id가 tbltraineelist에 존재하지 않습니다.');
END;
/
