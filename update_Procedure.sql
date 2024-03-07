-- 1. 강의진행여부 자동 변경 > 현재 날짜를 기준으로 강의 예정, 강의중, 강의 종료로 자동 변경
create or replace procedure procUpdateCurriProgress
is
    vSeq number;
    vStartDate DATE;
    vEndDate DATE;
    
    cursor vcursor is
        select seq_opencurriculum, startdate, enddate
        from tblopencurriculum;       
begin
    open vcursor;
    loop
        fetch vcursor into vSeq, vStartdate, vEnddate;
        exit when vcursor%notfound;

        -- 개강일이 현재보다 미래일 때
        if vstartDate > sysdate 
            then update tblopencurriculum set seq_curriculumprogress = 1 where seq_opencurriculum = vseq;
    
     -- 현재가 개강일과 종료일 사이일 때
        ELSIF vstartDate < sysdate and venddate > sysdate 
            then update tblopencurriculum set seq_curriculumprogress = 2 where seq_opencurriculum = vseq;
    
        -- 현재가 종료일보다 미래일 때
        ELSIF venddate < sysdate 
            then update tblopencurriculum set seq_curriculumprogress = 3 where seq_opencurriculum = vseq;
        END IF;
    end loop;
    close vcursor;    
end procUpdateCurriProgress;
/
begin
    procUpdateCurriProgress();
end;
/

-- 2. 강의 종료시 학생들 수료 상태로 변경 + 수료날짜 자동 업데이트
-- 테스트를 위한 null 만들기
update tbltraineelist 
set status = null, 
    day  = null
where seq_traineelist between 1 and 20
and seq_traineelist != 10;

rollback;

-- 과정 종료된 목록 불러오기
select tl.seq_traineeList, oc.endDate, tl.status, tl.day
        from tblTraineeList tl
            left outer join tblOpenCurriculum oc
                on tl.seq_openCurriculum = oc.seq_openCurriculum
        where oc.endDate < sysdate;

-- 전체
select tl.seq_traineeList, oc.seq_openCurriculum, oc.endDate, tl.status, tl.day
from tblTraineeList tl
    left outer join tblOpenCurriculum oc
        on tl.seq_openCurriculum = oc.seq_openCurriculum;



--프로시저 실행
begin
    procUpdateCurriCompletionDate;
end;
/

create or replace procedure procUpdateCurriCompletionDate 
is
    vSeq_traineeList tblTraineeList.seq_traineeList%type;
    vEndDate tblOpenCurriculum.endDate%type;
    vStatus tblTraineeList.status%type;
    
    cursor vcursor is
        select tl.seq_traineeList, oc.endDate, tl.status
        from tblTraineeList tl
            left outer join tblOpenCurriculum oc
                on tl.seq_openCurriculum = oc.seq_openCurriculum
        where oc.endDate < sysdate; --과정이 종료된 경우
    
begin
    open vcursor;
    loop
        fetch vcursor into vSeq_traineeList, vEndDate, vStatus;
        exit when vcursor%notfound;
        
        -- 날짜가 비어있는 경우
        if vStatus is null then
            update tblTraineeList 
            set status = '수료',
                day = vEndDate 
            where seq_traineeList = vSeq_traineeList;
        end if;
        
    end loop;
    close vcursor;
end procUpdateCurriCompletionDate;
/
 


-- 4. 결석생은 자동으로 출결 테이블에 결석 데이터 들어가게 만들기


-- 5. 출결인정 서류 내고 허가 받으면 출결 인정으로 자동 업데이트


-- 10. 출결 상황을 자동 업데이트 하는 트리거
-- 정상(1), 지각(2), 조퇴(3), 외출(4), 병가(5), 기타(6), 결석(7)
begin
    procUpdateaAttendanceStatus;
end;
/

select 
to_char(inTime, 'HH24:MI:SS') "출근 시간",
to_char(outTime, 'HH24:MI:SS') "퇴근 시간",
seq_attendanceStatus
from tblAttendance;


update tblAttendance 
set seq_attendanceStatus = null 
where seq_attendancestatus = 1  
or seq_attendancestatus = 2
or seq_attendancestatus = 3;


rollback;

create or replace procedure procUpdateaAttendanceStatus
is
    vSeq_attendance tblAttendance.seq_attendance%type;
    vInTime tblAttendance.inTime%type;
    vOutTime tblAttendance.outTime%type;
    vSeq_attendanceStatus tblAttendance.seq_attendanceStatus%type;
    vCurrentTime varchar2(10); -- 현재 시간을 담아둘 변수
    
    cursor vcursor is
        select 
        seq_attendance,
        inTime,
        outTime,
        seq_attendanceStatus
        from tblAttendance;
    
    
begin
    -- 현재 시간의 시간 부분을 가져오기
    vCurrentTime := to_char(sysdate, 'HH24:MI');

    open vcursor;
    
    loop
        fetch vcursor into vSeq_attendance, vInTime, vOutTime, vSeq_attendanceStatus;
        exit when vcursor%notfound;
        
        -- seq_attendanceStatus가 null이면 값을 넣음
        if vSeq_attendanceStatus is null then
            -- 9시 전에 오고, 17시 50분 이후 퇴실 한 경우
            if to_char(vInTime, 'HH24:MI') < '09:00' and to_char(vOutTime, 'HH24:MI') >= '17:50' then
                update tblAttendance 
                set seq_attendanceStatus = 1 -- 정상
                where seq_attendance = vSeq_attendance;
            -- inTime이 null이고 현재 시간이 9시 이후인 경우 or 9시 이후에 온 경우
            elsif vInTime is null and vCurrentTime >= '09:00' or to_char(vInTime, 'HH24:MI') >= '09:00' then
                update tblAttendance 
                set seq_attendanceStatus = 2 -- 지각
                where seq_attendance = vSeq_attendance;
            -- outTime이 null이고 현재 시간이 18시 이후인 경우 or 그 전에 간 경우
            elsif vOutTime is null and vCurrentTime >= '18:00' or to_char(vOutTime, 'HH24:MI') < '17:50' then
                update tblAttendance 
                set seq_attendanceStatus = 3 -- 조퇴
                where seq_attendance = vSeq_attendance;
            end if;
        end if;
                
    end loop;
    close vcursor;
end;
/

select * from tblAttendanceStatus order by tblattendancestatus.seq_attendancestatus;

select 
to_char(inTime, 'HH24:MI') "출근 시간",
to_char(outTime, 'HH24:MI') "퇴근 시간",
seq_attendanceStatus
from tblAttendance;

