--Trigger

--3번

/
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

/


--6번

/
CREATE OR REPLACE TRIGGER trgCheckPoints
BEFORE INSERT ON tblTestInfo
FOR EACH ROW
BEGIN
    IF :NEW.writtenpoints >= 30 THEN
        RAISE_APPLICATION_ERROR(-20001, '최대 30까지 입력 가능합니다.');
    END IF;
    
    IF :NEW.practicalpoints >= 40 THEN
        RAISE_APPLICATION_ERROR(-20002, '최대 40까지 입력 가능합니다.');
    END IF;
    
    IF :NEW.attendancepoints >= 30 THEN
        RAISE_APPLICATION_ERROR(-20003, '최대 30까지 입력 가능합니다.');
    END IF;
END;
/
select * from tbltrainees;
-- 7번 
/
CREATE OR REPLACE TRIGGER trgCheckStatus
BEFORE INSERT ON tblcurriculumevaluation
FOR EACH ROW
DECLARE
    v_status VARCHAR2(20);
BEGIN
    -- tbltraineelist에서 해당 trainee의 status를 가져옵니다.
    SELECT status INTO v_status
    FROM tbltraineelist
    WHERE seq_traineelist = :NEW.seq_traineelist;
    
    -- status가 '수료'인 경우에만 삽입을 허용합니다.
    IF v_status != '수료' THEN
        RAISE_APPLICATION_ERROR(-20001, '수료 상태일 때만 평가를 삽입할 수 있습니다.');
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20002, '해당 trainee_id가 tbltraineelist에 존재하지 않습니다.');
END;
/

select * from tblopensubjectlist;


-- 8번
/
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
        RAISE_APPLICATION_ERROR(-20001, '과목 종료일 이후에만 시험 정보를 삽입할 수 있습니다.');
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20002, '해당 과목 ID가 tblOpensubjectList에 존재하지 않습니다.');
END;
/
--9번(아직 다 못 함)
select * from tbltraineelist;





/


-- 10번
/
CREATE OR REPLACE TRIGGER trgUpdateAttendanceStatus
BEFORE INSERT OR UPDATE ON tblAttendance
FOR EACH ROW
DECLARE
    v_current_time NUMBER;
BEGIN
    -- 현재 시간을 가져옵니다.
    SELECT TO_NUMBER(TO_CHAR(SYSDATE, 'HH24')) INTO v_current_time FROM DUAL;

    -- inTime이 null이고 현재 시간이 9시 이후인 경우
    IF :NEW.inTime IS NULL AND v_current_time >= 9 THEN
        :NEW.seq_AttendanceStatus := 2;
    END IF;

    -- outTime이 null이고 현재 시간이 18시 이후인 경우
    IF :NEW.outTime IS NULL AND v_current_time >= 18 THEN
        :NEW.seq_AttendanceStatus := 3;
    END IF;

    -- intime과 outtime이 모두 null이고 현재 시간이 18시 이후인 경우
    IF :NEW.inTime IS NULL AND :NEW.outTime IS NULL AND v_current_time >= 18 THEN
        :NEW.seq_AttendanceStatus := 6;
    END IF;
END;
/


