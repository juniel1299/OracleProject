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
    
/





--교육생 이름으로 성적 검색 프로시저
CREATE OR REPLACE PROCEDURE proctg(
    ptname VARCHAR2
)
IS
    vt_name VARCHAR2(500);
    vs_name VARCHAR2(500);
    vosl_startdate DATE;
    vosl_enddate DATE;
    vg_writtenDate DATE;
    vg_practicalDate DATE;
    vg_writtenGrade NUMBER;
    vg_practicalGrade NUMBER;
    vg_attendanceGrade NUMBER;

    CURSOR vcursor IS
        SELECT DISTINCT
            t.name AS 교육생이름,
            g.s_name AS 과목명,
            osl.startdate AS 과목시작일,
            osl.enddate AS 과목종료일,
            g.writtenDate AS 필기날짜,
            g.practicalDate AS 실기날짜,
            g.writtenGrade AS 필기점수,
            g.practicalGrade AS 실기점수,
            g.attendanceGrade AS 출결점수
        FROM
            vwgrades g
            INNER JOIN tbltraineelist tl ON g.seq_traineelist = tl.seq_traineelist
            INNER JOIN tbltrainees t ON tl.seq_trainee = t.seq_trainee
            INNER JOIN tblteacher tc ON g.seq_teacher = tc.seq_teacher
            INNER JOIN tblopensubjectlist osl ON g.seq_opensubjectlist = osl.seq_opensubjectlist
            INNER JOIN tbltextbook b ON osl.seq_textbook = b.seq_textbook
            INNER JOIN tblopencurriculum oc ON g.seq_opencurriculum = oc.seq_opencurriculum
            INNER JOIN tblroom r ON oc.seq_room = r.seq_room
            INNER JOIN tblexampaper ep ON g.seq_subject = ep.seq_subject
            INNER JOIN tblquestion q ON ep.seq_question = q.seq_question
        WHERE
            t.name = ptname;

BEGIN
    OPEN vcursor;
    LOOP
        FETCH vcursor INTO vt_name, vs_name, vosl_startdate, vosl_enddate, vg_writtenDate, vg_practicalDate, vg_writtenGrade, vg_practicalGrade, vg_attendanceGrade;
        EXIT WHEN vcursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('수강생이름: ' || vt_name || '  과목명: ' || vs_name || '  과목시작일: ' || vosl_startdate || ' 과목종료일: ' || vosl_enddate ||
                             ' 필기날짜: ' || vg_writtenDate || ' 실기날짜: ' || vg_practicalDate || ' 필기점수: ' || vg_writtenGrade || ' 실기점수: ' || vg_practicalGrade ||
                             '출결점수: ' || vg_attendanceGrade);
    END LOOP;
    CLOSE vcursor;
END proctg;
/
begin
proctg('나백전');
end;
/
begin
proctg('곤문권');
end;
/










    