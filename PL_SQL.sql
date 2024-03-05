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
    