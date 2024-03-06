--PL/SQL

--b-3
/* 교사 정보 관리 */
--1.2 교사별 강의 가능 과목 입력
--a. 기초 정보 과목명 조회
select * from tblSubject;
--b. 교사별 강의 가능 과목 추가
create or replace procedure procAddASL(
    pname in varchar2,            
    psubject out number
)
is
begin
    select seq_subject into psubject from tblsubject where name like '%'||pname||'%';     
end procAddASL;
/
declare
    vtemp number;
begin
    procAddASL('자바',vtemp); 
    select t.seq_teacher, t.name from tblteacher t inner join tblAvailableSubjectList asl on t.seq_teacher = asl.seq_teacher
        where asl.seq_subject = vtemp;
    
end;
/
set serveroutput on;
select * from tblAvailableSubjectList;
rollback;
insert into tblAvailableSubjectList (seq_availableSubjectList, seq_subject, seq_teacher)
	values ((select max(seq_availableSubjectList) from tblAvailableSubjectList) + 1, vtemp, 1);

--2.1 교사 전체 명단 출력
select
	t.name as 교사명,
    t.ssn as "주민번호 뒷자리",
    t.tel as 전화번호,
    s.name as "강의 가능 과목"
from tblTeacher t
    inner join tblAvailableSubjectList a
        on t.seq_teacher = a.seq_teacher
            inner join tblsubject s
                on a.seq_subject = s.seq_subject;
                
--2.2 특정 교사 정보 출력          
select 
    s_name as "배정된 개설 과목명",
    osl_startdate as 과목시작일,
    osl_enddate as 과목종료일,
    c_name as 과정명,
    oc_startdate as 과정시작일,
    oc_enddate as 과정종료일,
    b.name as 교재명,
    r_name as 강의실,
    g.status as 강의진행여부
from vwCurriculum v
    inner join tblTextbook b
        on b.seq_textbook = v.seq_textbook
            inner join tblcurriculumprogress g
                on v.seq_curriculumprogress = g.seq_curriculumprogress
                     where seq_teacher = 특정교사번호;

--2.3 강의 과목별로 가능한 교사 정보 출력
select
	t.name as 교사명,
    s.name as "강의 가능 과목"
from tblTeacher t
    inner join tblAvailableSubjectList a
        on t.seq_teacher = a.seq_teacher
            inner join tblsubject s
                on a.seq_subject = s.seq_subject
                    where s.name = 과목이름;

--3. 수정
update tblTeacher set tel = '01055554444'
	where seq_teacher = 1;
 
--4. 삭제
delete from tblTeacher
	where seq_teacher = 1;
    
    
    
    


--혜정
set serveroutput on;
select * from tbltestinfo;
select * from tblopensubjectlist osl
    inner join tblteacher t
        on osl.seq_teacher = t.seq_teacher;

--c-2 배점 입출력
-- 1. 교사가 강의를 마친 과목에 대한 성적 처리를 위해서 배점 입출력을 할 수 있어야 한다.
-- 3. 출결, 필기, 실기의 배점 비중은 담당 교사가 과목별로 결정한다. 단, 출결은 최소 20점 이상이어야 하고, 출결, 필기, 실기의 합은 100점이 되도록 한다.

-- 1.1. 배점 입력
begin
    procTestInfoIn(1, 1, 1, 40, 40, 20);
end;
/

create or replace procedure procTestInfoIn(
    pSeq_teacher in number,
    pSeq_testInfo in number,
    pSeq_openSubjectList in number,
    pWrittenpoints in number,
    pPracticalpoints in number,
    pAtendancepoints in number
) 
is
    vEnddate date;
begin
    -- tblopensubjectlist 테이블의 enddate 확인
    select osl.enddate into vEnddate
    from tblOpenSubjectList osl
        inner join tblTestInfo ti
            on ti.seq_openSubjectList = osl.seq_openSubjectList
                where osl.seq_teacher = pSeq_teacher
                and osl.seq_OpenSubjectList = pSeq_openSubjectList;

    -- enddate가 오늘 이전인 경우에만 배점 입력
    if vEnddate < sysdate then
        -- 배점 입력
        insert into tblTestInfo (seq_testInfo, seq_openSubjectList, writtenpoints, practicalpoints, attendancepoints) 
        values (pSeq_testInfo, pSeq_openSubjectList, pWrittenpoints, pPracticalpoints, pAtendancepoints);

        if sql%rowcount = 0 then
            dbms_output.put_line('해당 시험 정보가 존재하지 않습니다.');
        else
            dbms_output.put_line('배점이 등록되었습니다.');
        end if;
    else
        dbms_output.put_line('해당 과목은 아직 종료되지 않았습니다.');
    end if;
end procTestInfoIn;
/


-- 1.2.배점 출력
begin
    procTestInfoOut(1, 1);
end;
/

create or replace procedure procTestInfoOut(
    pSeq_teacher in number,
    pSeq_openSubjectList in number
) 
is
 cursor vcursor is
        select 
        ti.seq_openSubjectList, 
        ti.writtenpoints, 
        ti.practicalpoints, 
        ti.attendancepoints
        from tblTestInfo ti
            inner join tblOpenSubjectList osl
                on ti.seq_openSubjectList = osl.seq_openSubjectList
                    where osl.seq_teacher = pSeq_teacher
                    and osl.seq_OpenSubjectList = pSeq_openSubjectList
                    and osl.enddate < sysdate;    
    
    vSeq_opensubjectlist tblopensubjectlist.seq_opensubjectlist%type;
    vWrittenpoints tbltestinfo.writtenpoints%type;
    vPracticalpoint tbltestinfo.practicalpoints%type;
    vAttendancepoints tbltestinfo.attendancepoints%type;
    
begin
    -- 배점 출력
    open vcursor;
    loop
        fetch vcursor into vSeq_opensubjectlist, vWrittenpoints, vPracticalpoint, vAttendancepoints;
        exit when vcursor%notfound;

        -- 결과 출력
        dbms_output.put_line('개설 과목 목록 번호: ' || vSeq_opensubjectlist);
        dbms_output.put_line('필기 배점: ' || vWrittenpoints);
        dbms_output.put_line('실기 배점: ' || vPracticalpoint);
        dbms_output.put_line('출결 배점: ' || vAttendancepoints);
        dbms_output.put_line('-----------------------------------------------------------------------------------');

    end loop;
    close vcursor;    
end procTestInfoOut;
/


-- 2. 교사는 자신이 강의를 마친 과목의 목록 중에서 특정 과목을 선택하고 해당 과목의 배점 정보를 출결, 필기, 실기로 구분해서 등록할 수 있어야 한다.(위에서 구현 완료) 시험 날짜, 시험 문제를 추가할 수 있어야 한다.
-- 2.5. 시험 날짜 추가
begin
    procTestDateIn(1, 1, TO_DATE('2023-10-03', 'YYYY-MM-DD'), TO_DATE('2023-10-04', 'YYYY-MM-DD'));
end;
/

create or replace procedure procTestDateIn (
    pSeq_teacher in number,
    pSeq_testInfo in number,
    pWrittenDate in date,
    pPracticalDate in date
) 
is
    vEnddate date;
begin
    -- tblopensubjectlist 테이블의 enddate 확인
    select osl.enddate into vEnddate
    from tblOpenSubjectList osl
        inner join tblTestInfo ti
            on ti.seq_openSubjectList = osl.seq_openSubjectList
                where osl.seq_teacher = pSeq_teacher
                and ti.seq_testinfo = pSeq_testInfo;

    -- enddate가 오늘 이전인 경우에만 시험 날짜 추가
    if vEnddate < sysdate then
        -- 시험 날짜 추가
        update tblTestInfo
        set writtenDate = TO_DATE(pWrittenDate, 'YYYY-MM-DD'), 
            practicalDate = TO_DATE(pPracticalDate, 'YYYY-MM-DD')
        where seq_testInfo = pSeq_testInfo;

        if sql%rowcount = 0 then
            dbms_output.put_line('해당 시험 정보가 존재하지 않습니다.');
        else
            dbms_output.put_line('시험 날짜가 추가되었습니다.');
        end if;
    else
        dbms_output.put_line('해당 과목은 아직 종료되지 않았습니다.');
    end if;
end procTestDateIn;
/


-- 2.6. 시험 문제 추가
begin
    procTestQuestionIn(1, 1);
end;
/

create or replace procedure rocTestQuestionIn (
    pSeq_teacher in number,
    pSeq_testInfo in number,
    pWrittenDate in date,
    pPracticalDate in date
) 
is
    vEnddate date;
begin
    -- tblopensubjectlist 테이블의 enddate 확인
    select osl.enddate into vEnddate
    from tblOpenSubjectList osl
        inner join tblTestInfo ti
            on ti.seq_openSubjectList = osl.seq_openSubjectList
                where osl.seq_teacher = pSeq_teacher
                and ti.seq_testinfo = pSeq_testInfo;

    -- enddate가 오늘 이전인 경우에만 시험 날짜 추가
    if vEnddate < sysdate then
        -- 시험 날짜 추가
        update tblTestInfo
        set writtenDate = TO_DATE(pWrittenDate, 'YYYY-MM-DD'), 
            practicalDate = TO_DATE(pPracticalDate, 'YYYY-MM-DD')
        where seq_testInfo = pSeq_testInfo;

        if sql%rowcount = 0 then
            dbms_output.put_line('해당 시험 정보가 존재하지 않습니다.');
        else
            dbms_output.put_line('시험 날짜가 추가되었습니다.');
        end if;
    else
        dbms_output.put_line('해당 과목은 아직 종료되지 않았습니다.');
    end if;
end procTestDateIn;
/


-- 4. 과목 목록 출력 시 과목번호, 과정명, 과정기간(시작 년월일, 끝 년월일), 강의실, 과목명, 과목기간(시작 년월일, 끝 년월일), 교재명, 출결, 필기, 실기 배점 등이 출력되고, 
-- 특정 과목을 과목번호로 선택 시 출결 배점, 필기 배점, 실기 배점, 시험 날짜, 시험 문제를 입력할 수 있는 화면으로 연결되어야 한다.
-- 5. 배점 등록이 안 된 과목인 경우는 과목 정보가 출력될 때 배점 부분은 null 값으로 출력한다.
begin
    
end;
/

create or replace procedure procTestDateIn (
    pSeq_teacher in number,
    pSeq_testInfo in number,
    pWrittenDate in date,
    pPracticalDate in date
) 
is
    vEnddate date;
begin
    -- tblopensubjectlist 테이블의 enddate 확인
    select osl.enddate into vEnddate
    from tblOpenSubjectList osl
        inner join tblTestInfo ti
            on ti.seq_openSubjectList = osl.seq_openSubjectList
                where osl.seq_teacher = pSeq_teacher
                and ti.seq_testinfo = pSeq_testInfo;

    -- enddate가 오늘 이전인 경우에만 시험 날짜 추가
    if vEnddate < sysdate then
        -- 시험 날짜 추가
        update tblTestInfo
        set writtenDate = TO_DATE(pWrittenDate, 'YYYY-MM-DD'), 
            practicalDate = TO_DATE(pPracticalDate, 'YYYY-MM-DD')
        where seq_testInfo = pSeq_testInfo;

        if sql%rowcount = 0 then
            dbms_output.put_line('해당 시험 정보가 존재하지 않습니다.');
        else
            dbms_output.put_line('시험 날짜가 추가되었습니다.');
        end if;
    else
        dbms_output.put_line('해당 과목은 아직 종료되지 않았습니다.');
    end if;
end procTestDateIn;
/





--c-3 


--c-4 


--c-6 


--c-7


    