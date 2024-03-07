--PL/SQL

--b-3
set serveroutput on;

--특정 교사 정보 출력   
create or replace procedure procTeacherInfo (
    pname in varchar2  
)
is
    vtName tblTeacher.name%type;
    vsName tblSubject.name%type;
    vsStart tblopensubjectlist.startdate%type;
    vsEnd tblopensubjectlist.enddate%type;
    vcName tblcurriculum.name%type;
    vcstart tblopencurriculum.startdate%type;
    vcend tblopencurriculum.enddate%type;
    vbname tblTextbook.name%type;
    vrname tblroom.name%type;
    vStat varchar2(15);
    
    cursor vcursor is
    select 
    s_name as "개설 과목명",
    osl_startdate as 과목시작일,
    osl_enddate as 과목종료일,
    c_name as 과정명,
    oc_startdate as 과정시작일,
    oc_enddate as 과정종료일,
    b.name as 교재명,
    r_name as 강의실,
    case
        when osl_startdate < sysdate and sysdate > osl_enddate then '강의종료'
        when osl_startdate > sysdate then '강의예정'
        when osl_startdate <= sysdate and sysdate <= osl_enddate then '강의중'
    end as "강의상태"
from vwCurriculum v
    inner join tblTextbook b
        on b.seq_textbook = v.seq_textbook
            inner join tblcurriculumprogress g
                on v.seq_curriculumprogress = g.seq_curriculumprogress
                    inner join tblteacher t
                        on v.seq_teacher = t.seq_teacher
                            where t.name = pname
                                order by 과목시작일;
begin
    open vcursor;
    loop
        fetch vcursor into vsName, vsStart, vsEnd, vcname, vcstart, vcend, vbname, vrname, vStat;
        exit when vcursor%notfound;
        dbms_output.put_line('-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
        dbms_output.put_line('교사명: ' || pName || '| 과목명: ' || vsName || '| 과목시작일: ' || vsStart || '| 과목종료일: ' || vsEnd || '| 과정명: ' || vcname || '| 과정시작일: ' || vcstart || '| 과정종료일: ' || vcend || '| 교재명: ' || vbname || '| 강의실명: '|| vrname || '| 강의상태: ' || vStat);
        dbms_output.put_line('-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
    end loop;
    close vcursor;   
end procTeacherInfo;
/
begin
    procTeacherInfo('김희연');     
end;
/

--입력한 과목을 강의 가능한 교사 정보 출력 > b-5 한번에 해결
create or replace procedure procTeacherWhoCan(
    pname in varchar2
)
is
    vTname tblteacher.name%type;
    vSubName tblsubject.name%type;
    cursor vcursor is
    select
        distinct t.name, s.name
    from tblteacher t
        inner join tblAvailableSubjectList asl
            on t.seq_teacher = asl.seq_teacher
                inner join tblsubject s
                    on s.seq_subject = asl.seq_subject
                        where s.name = pname;
begin
    open vcursor;
    loop
        fetch vcursor into vTname, vSubName;
        exit when vcursor%notfound;
        dbms_output.put_line('-----------------------------------------------');
        dbms_output.put_line('이름: ' || vTname || ' | 과목명: ' || vSubName);
        dbms_output.put_line('-----------------------------------------------');
    end loop;
    close vcursor;
end procTeacherWhoCan;
/
begin
    procTeacherWhoCan('자바');     
end;
/

--b-4
/* 특정 개설 과정 선택 */
--개설 교육 과정 번호를 입력하여 개설 과목 정보 확인
create or replace procedure procCurriDetail (
    pnum in number
)
is
    vSName tblSubject.name%type;
    vsStart tblOpensubjectlist.startdate%type;
    vsEnd tblOpensubjectlist.enddate%type;
    vtName tbltrainees.name%type;
    vTel varchar2(15);
    vRegdate date;
    vStat varchar2(30);
    
    cursor vcursor is
    
    select
    v.s_name as "과목명",
    v.osl_startdate as "과목시작일",
    v.osl_enddate as "과목종료일",
    t.name as "학생명",
    t.tel as "전화번호",
    t.registrationDate as "등록일",
    (case
        when tl.status is not null then tl.status
        when v.seq_curriculumprogress = 1 then '강의 진행 예정'
        when v.seq_curriculumprogress = 2 then '강의 진행 중'
    end) as "수료 여부"
    from vwcurriculum v
    left outer join tbltraineelist tl
        on tl.seq_opencurriculum = v.seq_opencurriculum
            inner join tbltrainees t
                on t.seq_trainee = tl.seq_trainee
                    where v.seq_opencurriculum = pnum;
begin
    open vcursor;
    loop
        fetch vcursor into vSName, vsStart, vsEnd, vtName, vTel, vRegdate, vStat;
        exit when vcursor%notfound;
        dbms_output.put_line('----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
        dbms_output.put_line('과목명: ' || vSName || ' | 과목시작일: ' || vsStart || ' | 과목종료일: ' || vsEnd || ' | 학생명: ' || vtName || ' | 전화번호: ' || vTel || ' | 등록일: ' || vRegdate || ' | 수료여부: ' || vStat);
        dbms_output.put_line('----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
    end loop;
    close vcursor;
end procCurriDetail;
/
begin
    procCurriDetail(1); --개설교육과정 번호    
end;


--교사명 입력시 강의 스케줄 출력 프로시저
--과목번호, 과정명, 과정기간,강의실과 과목명, 과목기간(시작 년월일, 끝 년월일), 교재명, 교육생 등록 인원
/
CREATE OR REPLACE PROCEDURE proctschedule(
    ptname VARCHAR2
)
IS
   
    vc_name VARCHAR2(200);
    vcp_status varchar2(30);
    voc_startdate date;
    voc_enddate date;
    vs_seq_subject NUMBER;
    vs_name varchar2(200);
    vos_startdate DATE;
    vos_enddate DATE;
    vtb_name VARCHAR2(200);
    vr_capacity number;
    
    CURSOR vcursor IS
        select distinct 
c.name as 과정명,
cp.status as 과정상태,
oc.startDate as 시작일,
oc.endDate as 종료일,
s.seq_subject as 과목번호,
s.name as 과목명,
os.startdate as 과목시작일,
os.enddate as 과목종료일,
tb.name as 교재명,
r.capacity as 인원수
from tblTeacher t
    inner join tblOpenSubjectList os
        on t.seq_teacher = os.seq_teacher
            inner join tblOpenCurriculum oc
                on oc.seq_openCurriculum = os.seq_openCurriculum
                    inner join tblCurriculumProgress cp
                        on cp.seq_curriculumProgress = oc.seq_curriculumProgress
                            inner join tblTraineeList tl
                                on oc.seq_openCurriculum = tl.seq_openCurriculum
                                    inner join tblTrainees tr
                                        on tr.seq_trainee = tl.seq_trainee
                                            inner join tblsubjectlist sl
                                                on sl.seq_subjectList = os.seq_subjectList
                                                 inner join tblsubject s 
                                                    on s.seq_subject = sl.seq_subject
                                                        inner join tblRoom r
                                                            on r.seq_room = oc.seq_room
                                                                inner join tblCurriculum c 
                                                                    on c.seq_Curriculum = oc.seq_Curriculum
                                                                     inner join tblCoursePeriod cop
                                                                        on cop.seq_coursePeriod = c.seq_coursePeriod
                                                                            inner join tblTextBook tb 
                                                                                on tb.seq_textbook = os.seq_textbook
                                                                where t.name = '김민곤'
                                                                    ;         

BEGIN
    OPEN vcursor;
    LOOP
        FETCH vcursor INTO  vc_name,vcp_status, voc_startdate,voc_enddate,vs_seq_subject, vs_name, vos_startdate, vos_enddate, vtb_name,vr_capacity;
        EXIT WHEN vcursor%NOTFOUND;
       dbms_output.put_line ('----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
        DBMS_OUTPUT.PUT_LINE( '과정명: ' || vc_name || '| 과정상태'  || vcp_status|| '| 과정시작일: ' || voc_startdate || ' | 과정종료일: ' ||  voc_enddate ||
                                               '| 과목번호'||vs_seq_subject|| '| 과목명: ' ||vs_name ||'| 과목시작일: ' || vos_startdate || '| 과목종료일: ' ||  vos_enddate ||
                                                '| 교재명'|| vtb_name||'| 등록인원' || vr_capacity);
      dbms_output.put_line ('----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');         
    END LOOP;
    CLOSE vcursor;
END proctschedule;
/
begin
proctschedule('김민곤');
end;
/
--교육중인 과정에 등록된 교육생 정보(교육생 이름, 전화번호, 등록일, 수료 또는 중도탈락)을 확인할 수 있어야 한다.
CREATE OR REPLACE PROCEDURE proctinfo(
    ptname VARCHAR2
)
IS
 vc_name varchar2(200);
 vtr_name varchar2(10);
 vtr_tel varchar2(15);
 vtr_registrationDate date;
 vtl_status varchar2(15);
CURSOR vcursor IS
select distinct 

c.name as 과정명,
tr.name as 교육생이름,
tr.tel as 교육생전화번호,
tr.registrationDate as 교육생등록일,
tl.status as 교육생상태
from tblTeacher t
    inner join tblOpenSubjectList os
        on t.seq_teacher = os.seq_teacher
            inner join tblOpenCurriculum oc
                on oc.seq_openCurriculum = os.seq_openCurriculum
                    inner join tblCurriculumProgress cp
                        on cp.seq_curriculumProgress = oc.seq_curriculumProgress
                            inner join tblTraineeList tl
                                on oc.seq_openCurriculum = tl.seq_openCurriculum
                                    inner join tblTrainees tr
                                        on tr.seq_trainee = tl.seq_trainee
                                            inner join tblsubjectlist sl
                                                on sl.seq_subjectList = os.seq_subjectList
                                                 inner join tblsubject s 
                                                    on s.seq_subject = sl.seq_subject
                                                        inner join tblRoom r
                                                            on r.seq_room = oc.seq_room
                                                                inner join tblCurriculum c 
                                                                    on c.seq_Curriculum = oc.seq_Curriculum
                                                                     inner join tblCoursePeriod cp
                                                                        on cp.seq_coursePeriod = c.seq_coursePeriod
                                                                            inner join tblTextBook tb 
                                                                                on tb.seq_textbook = os.seq_textbook
                                                                where t.name = ptname;
                                                                    
BEGIN
    OPEN vcursor;
    LOOP
        FETCH vcursor INTO  vc_name, vtr_name,vtr_tel, vtr_registrationDate, vtl_status;
        EXIT WHEN vcursor%NOTFOUND;
       dbms_output.put_line ('----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
        DBMS_OUTPUT.PUT_LINE( '과정명: ' || vc_name || '| 교육생이름: '  || vtr_name|| '| 전화번호: ' || vtr_tel || ' | 등록일: ' ||  vtr_registrationDate ||
                                               '| 상태:'||vtl_status);
      dbms_output.put_line ('----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');         
    END LOOP;
    CLOSE vcursor;
END proctinfo;
/
begin
proctinfo('김민곤');
end;
/
--강사명 검색시 과목별 정보와 배점,시험문제 조회
CREATE OR REPLACE PROCEDURE proctga(
    ptname VARCHAR2
)
IS
vtc_name VARCHAR2(15); -- 강사명
vg_seq_subject NUMBER; -- 과목 번호
vg_s_name VARCHAR2(100); -- 과목명
vb_name VARCHAR2(100); -- 교재명
vosl_startdate DATE; -- 과목 시작일
vosl_enddate DATE; -- 과목 종료일
vg_writtenDate DATE; -- 필기날짜
vg_practicalDate DATE; -- 실기날짜
vg_WRITTENPOINTS  NUMBER; -- 필기배점
vg_practicalPoints NUMBER; -- 실기배점
vg_attendancePoints NUMBER; -- 출결배점
vq_question VARCHAR2(5000); -- 시험 문제

CURSOR vcursor IS
SELECT DISTINCT 
    tc.name AS 강사명,
    g.seq_subject AS 과목번호,
    g.s_name AS 과목명,
    b.name AS 교재명,
    osl.startdate AS 과목시작일,
    osl.enddate AS 과목종료일,
    g.writtenPoints AS 필기배점,
    g.practicalPoints AS 실기배점,
    g.attendancePoints AS 출결배점,
       g.writtenDate AS 필기날짜,
    g.practicalDate AS 실기날짜,
    q.question AS 문제
FROM 
    vwgrades g
    INNER JOIN tbltraineelist tl ON g.seq_traineelist = tl.seq_traineelist
    INNER JOIN tbltrainees t ON tl.seq_trainee = t.seq_trainee
    INNER JOIN tblteacher tc ON g.seq_teacher = tc.seq_teacher
    INNER JOIN tblopensubjectlist osl ON g.seq_opensubjectlist = osl.seq_opensubjectlist
    INNER JOIN tbltextbook b ON osl.seq_textbook = b.seq_textbook
    INNER JOIN tblopencurriculum oc ON g.seq_opencurriculum = oc.seq_opencurriculum
    INNER JOIN tblroom r ON oc.seq_room = r.seq_room
    INNER JOIN tblexampaper ep ON osl.seq_openSubjectList = ep.seq_openSubjectList
    INNER JOIN tblquestion q ON ep.seq_question = q.seq_question
WHERE 
    tc.name = ptname
ORDER BY 
    g.seq_subject asc;

BEGIN
    OPEN vcursor;
    LOOP
        FETCH vcursor INTO vtc_name, vg_seq_subject, vg_s_name, vb_name, vosl_startdate, vosl_enddate, vg_writtenPoints,
            vg_practicalPoints, vg_attendancePoints, vg_writtenDate, vg_practicalDate, vq_question;
        EXIT WHEN vcursor%NOTFOUND;
       
        DBMS_OUTPUT.PUT_LINE('----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
        DBMS_OUTPUT.PUT_LINE('강사명: ' || vtc_name || ' | 과목번호: ' || vg_seq_subject || '|  과목명: ' || vg_s_name || '| 교재명: ' || vb_name ||
                             '| 과목시작일: ' || vosl_startdate || '| 과목종료일: ' || vosl_enddate || '| 필기배점: ' || vg_writtenPoints || '| 실기배점: ' || vg_practicalPoints ||
                             '| 출결배점: ' || vg_attendancePoints || '| 필기날짜:'|| vg_writtenDate || '| 실기날짜:'|| vg_practicalDate  ||'| 시험문제:'|| vq_question);
        DBMS_OUTPUT.PUT_LINE('----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
    END LOOP;
    CLOSE vcursor;

END proctga;

/
begin
proctga('김민곤');
end;
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
            INNER JOIN tblexampaper ep ON osl.seq_opensubjectlist = ep.seq_opensubjectlist
            INNER JOIN tblquestion q ON ep.seq_question = q.seq_question
        WHERE
            t.name = ptname;

BEGIN
    OPEN vcursor;
    LOOP
        FETCH vcursor INTO vt_name, vs_name, vosl_startdate, vosl_enddate, vg_writtenDate, vg_practicalDate, vg_writtenGrade, vg_practicalGrade, vg_attendanceGrade;
        EXIT WHEN vcursor%NOTFOUND;
       
        dbms_output.put_line('----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
        DBMS_OUTPUT.PUT_LINE('수강생이름: ' || vt_name || ' | 과목명: ' || vs_name || '|  과목시작일: ' || vosl_startdate || '| 과목종료일: ' || vosl_enddate ||
                             '| 필기날짜: ' || vg_writtenDate || '| 실기날짜: ' || vg_practicalDate || '| 필기점수: ' || vg_writtenGrade || '| 실기점수: ' || vg_practicalGrade ||
                             '| 출결점수: ' || vg_attendanceGrade);
         dbms_output.put_line('----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
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
 --강사가 자신의 이름 검색 하면 수료한 학생들이 작성한 평가 확인 하는 프로시저
/
create or replace procedure procTce(
    ptname varchar2
)
is
vt_name varchar2(10);
vce_grade number;
vce_content varchar2(10000);

CURSOR vcursor IS
select distinct 
t.name as 강사명,
ce.grade as 점수,
ce.content as 내용
from tblCurriculumEvaluation ce
    inner join tblTraineeList tl
        on tl.seq_traineeList = ce.seq_traineeList
            inner join tblOpenCurriculum oc 
                on oc.seq_openCurriculum = tl.seq_openCurriculum
                    inner join tblOpenSubjectList sl 
                        on oc.seq_openCurriculum = sl.seq_openCurriculum
                            inner join tblTeacher t 
                                on t.seq_teacher = sl.seq_teacher
                                    where t.name = ptname;
begin
    open vcursor;
    loop
    fetch vcursor into vt_name, vce_grade, vce_content;
    exit when vcursor%notfound;
        dbms_output.put_line('----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');  
      DBMS_OUTPUT.PUT_LINE('강사이름: ' || vt_name || '| 점수: ' || vce_grade || '| 내용: ' || vce_content);
        dbms_output.put_line('----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
    end loop;
    close vcursor;
end procTce;
/
begin
proctce('김민곤');
end;
/






    