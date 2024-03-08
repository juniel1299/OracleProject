set serveroutput on;

--b-3
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
        dbms_output.put_line('과목명: ' || vSName || ' | 과목시작일: ' || vsStart || ' | 과목종료일: ' || vsEnd || ' | 학생명: ' || vtName || ' | 전화번호: ' || vTel || ' | 등록일: ' || vRegdate || ' | 수료여부: ' || vStat);
        dbms_output.put_line('----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
    end loop;
    close vcursor;
end procCurriDetail;
/

begin
    procCurriDetail(1); --개설교육과정 번호    
end;
/


-- b-7 

--과목별

CREATE OR REPLACE PROCEDURE procCurriculumBySubject (
    p_subject_name IN VARCHAR2
)
IS
    v_output VARCHAR2(4000);
BEGIN
    FOR cur IN (
        SELECT vc.c_name || ', ' || cp.period || ', ' || vc.r_name || ', ' || vc.s_name || ', ' || tea.name || ', ' || tb.name || ', ' || vt.t_name || ', ' || vt.t_ssn || ', ' || vg.writtengrade || ', ' || vg.practicalgrade AS output_line
        FROM vwcurriculum vc
        INNER JOIN vwtrainees vt ON vt.seq_opencurriculum = vc.seq_opencurriculum
        INNER JOIN vwgrades vg ON vg.seq_traineelist = vt.seq_traineelist
        INNER JOIN tblteacher tea ON tea.seq_teacher = vc.seq_teacher
        INNER JOIN tbltextbook tb ON tb.seq_textbook = vc.seq_textbook
        INNER JOIN tblcourseperiod cp ON cp.seq_courseperiod = vc.seq_courseperiod
        WHERE vc.c_name = p_subject_name
    )
    LOOP
        v_output := cur.output_line;
        DBMS_OUTPUT.PUT_LINE(v_output);
    END LOOP;
END procCurriculumBySubject;
/
/

/
BEGIN
    procCurriculumBySubject ('자바(Java)기반 Web과 스마트플랫폼 Full-Stack 과정(A)');
END;
/


-- 특정 개설 과정 
CREATE OR REPLACE PROCEDURE procGradesCourseInfo(
    p_course IN vwcurriculum.c_name%TYPE
) IS
    CURSOR c_grades IS
        SELECT vt.t_name, vc.c_name, vc.s_name, t.name AS teacher_name, 
               vg.writtengrade, vg.practicalgrade,
               (CASE WHEN vg.writtengrade IS NOT NULL THEN '필기성적입력완료' END) AS written,
               (CASE WHEN vg.practicalgrade IS NOT NULL THEN '실기성적입력완료' END) AS practical
        FROM vwgrades vg
        INNER JOIN vwtrainees vt ON vt.seq_traineelist = vg.seq_traineelist
        INNER JOIN vwcurriculum vc ON vc.seq_subject = vg.seq_subject
        INNER JOIN tblteacher t ON t.seq_teacher = vc.seq_teacher
        WHERE vc.c_name = p_course
        GROUP BY vt.t_name, vc.c_name, vc.s_name, t.name, vg.writtengrade, vg.practicalgrade;

    v_grades c_grades%ROWTYPE;
    written VARCHAR2(50);
    practical VARCHAR2(50);
BEGIN
    OPEN c_grades;
    LOOP
        FETCH c_grades INTO v_grades;
        EXIT WHEN c_grades%NOTFOUND;
        
        written := v_grades.written;
        practical := v_grades.practical;

        DBMS_OUTPUT.PUT_LINE('과정 이름: ' || v_grades.c_name || ', 주제: ' || v_grades.s_name || 
                             ', 강사 이름: ' || v_grades.teacher_name || ', 필기 성적: ' || 
                             v_grades.writtengrade || ', 실기 성적: ' || v_grades.practicalgrade || 
                             ', 필기성적입력 ' || written || ', 실기성적입력 ' || practical);
                             
        dbms_output.put_line('----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
    END LOOP;
    CLOSE c_grades;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('해당 교육생의 성적 정보를 찾을 수 없습니다.');
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END procGradesCourseInfo;

/

BEGIN
    procGradesCourseInfo('AWS와 Docker를 활용한 Java Full-Stack 과정(B)'); 
END;
/


--교육생 개인 별 
CREATE OR REPLACE PROCEDURE procGradesInfoByTrainee(
    p_trainee_name IN VARCHAR2
) IS
BEGIN
    FOR rec IN (
        SELECT vt.t_name AS trainee_name, vt.t_ssn, vc.c_name AS course_name, cp.period, 
               vc.r_name AS classroom_name, vc.s_name AS subject_name, vc.period AS subject_period, 
               tea.name AS teacher_name, ass.situation, vg.writtengrade, vg.practicalgrade
        FROM vwgrades vg
        INNER JOIN vwtrainees vt ON vt.seq_traineelist = vg.seq_traineelist
        INNER JOIN vwcurriculum vc ON vc.seq_subject = vg.seq_subject
        INNER JOIN tblcourseperiod cp ON cp.seq_courseperiod = vc.seq_courseperiod
        INNER JOIN tblattendancestatus ass ON ass.seq_attendancestatus = vt.seq_attendancestatus
        INNER JOIN tblteacher tea ON tea.seq_teacher = vc.seq_teacher
        WHERE vt.t_name = p_trainee_name
        GROUP BY vt.t_name, vt.t_ssn, vc.c_name, cp.period, vc.oc_startdate, vc.oc_enddate,
                 vc.r_name, vc.c_name, vc.period, tea.name, ass.situation, vc.s_name, vg.writtengrade, vg.practicalgrade
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE('교육생 이름: ' || rec.trainee_name || ', 주민등록번호: ' || rec.t_ssn || 
                             ', 과정명: ' || rec.course_name || ', 교시: ' || rec.period || 
                             ', 강의실: ' || rec.classroom_name || ', 주제: ' || rec.subject_name || 
                             ', 기간: ' || rec.subject_period || ', 교사 이름: ' || rec.teacher_name || 
                             ', 출결상태: ' || rec.situation || ', 필기성적: ' || 
                             rec.writtengrade || ', 실기성적: ' || rec.practicalgrade);
    END LOOP;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('해당 교육생의 성적 정보를 찾을 수 없습니다.');
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END procGradesInfoByTrainee;
/



/
BEGIN
    procGradesInfoByTrainee('천유서'); 
END;

/


-- b-8 

CREATE OR REPLACE PROCEDURE procCourseInfo(
    p_course IN tblCurriculum.name%TYPE,
    p_start_date IN DATE,
    p_end_date IN DATE
    
   
) IS
    CURSOR c_course IS
        SELECT t.name AS trainee_name, a.day, c.name AS course_name, ad.situation 
        FROM tblAttendance a
        INNER JOIN tblTraineeList tl ON a.seq_traineeList = tl.seq_traineelist
        INNER JOIN tblopencurriculum oc ON oc.seq_opencurriculum = tl.seq_opencurriculum
        INNER JOIN tblCurriculum c ON c.seq_curriculum = oc.seq_opencurriculum
        INNER JOIN tblattendancestatus ad ON ad.seq_attendancestatus = a.seq_attendancestatus
        INNER JOIN tblTrainees t ON t.seq_trainee = tl.seq_trainee
        WHERE c.name = p_course 
        AND a.day BETWEEN p_start_date AND p_end_date
        GROUP BY t.name, a.day, c.name, ad.situation;
    
    v_course c_course%ROWTYPE;
BEGIN
    OPEN c_course;
    LOOP
        FETCH c_course INTO v_course;
        EXIT WHEN c_course%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE('교육생 이름: ' || v_course.trainee_name || ', 날짜: ' || v_course.day || ', 과정 이름: ' || v_course.course_name || ', 출석 상황: ' || v_course.situation);
        dbms_output.put_line('----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');

    END LOOP;
    CLOSE c_course;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('해당 과정의 정보를 찾을 수 없습니다.');
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END procCourseInfo;
/

BEGIN
    procCourseInfo('AWS 클라우드와 Elasticsearch를 활용한 Java Full-Stack 과정(B)', TO_DATE('2023-11-01', 'YYYY-MM-DD'), TO_DATE('2023-12-30', 'YYYY-MM-DD'));
END;
/

-- 2. 특정 인원
CREATE OR REPLACE PROCEDURE procTraineeAttendanceInfo(
    p_name IN vwtrainees.t_name%TYPE
) IS
    CURSOR c_attendance IS
        SELECT vt.t_name, vt.a_day, vc.c_name, vt.situation 
        FROM vwtrainees vt
        INNER JOIN vwcurriculum vc ON vt.seq_opencurriculum = vc.seq_opencurriculum 
        WHERE vt.t_name = p_name
        GROUP BY vt.t_name, vt.a_day, vc.c_name, vt.situation;
    v_attendance c_attendance%ROWTYPE;
BEGIN
    OPEN c_attendance;
    LOOP
        FETCH c_attendance INTO v_attendance;
        EXIT WHEN c_attendance%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('교육생 이름: ' || v_attendance.t_name || ', 날짜: ' || v_attendance.a_day || ', 과정 이름: ' || v_attendance.c_name || ', 상태: ' || v_attendance.situation);
        dbms_output.put_line('----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');

    END LOOP;
    CLOSE c_attendance;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('해당 이름을 가진 교육생의 출석 정보를 찾을 수 없습니다.');
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END procTraineeAttendanceInfo;
/

BEGIN
    procTraineeAttendanceInfo('제류혁');
END;
/


-- 원혁
-- B-13 출석 인정 여부 확인 기능
create or replace procedure procInsertattendancePapers (
    p_seq_attendancePapers tblAttendancePapers.seq_attendancePapers%type,
    p_document tblAttendancePapers.document%type
)
is
    vdocument varchar2(50);
begin
    vdocument := p_document;

if (vdocument like '%코로나%' or 
    vdocument like '%사망%' or
    vdocument like '%입원%' or
    vdocument like '%의사%' or
    vdocument like '%출생 신고서%' or
    vdocument like '%국가 자격증 시험%' or
    vdocument like '%예비군%' or
    vdocument like '%면접%' or
    vdocument like '%국가%' or
    vdocument like '%병가%') then
    update tblAttendancePapers
    set admitattendance = '출석 인정'
    where seq_attendancePapers = p_seq_attendancePapers;
    dbms_output.put_line('출석이 인정되었습니다.');
else
    update tblAttendancePapers
    set admitattendance = '출석 미인정'
    where seq_attendancePapers = p_seq_attendancePapers;
    dbms_output.put_line('출석으로 인정되지 않는 서류입니다.');
    end if;
end procInsertattendancePapers;
/

begin
    procInsertattendancePapers(1, '경찰서');
end;
/


-- B-14 기자재 & 사물함 관리
-- 사물함 배정 및 관리
-- 교육생 목록에 리스트가 들어갔을 때 사물함이 자동 배정
create or replace procedure procAutoInsertlocker (
    p_seq_traineeList tblTraineeList.seq_traineeList%type,
    p_seq_openCurriculum tblTraineeList.seq_openCurriculum%type
)
is
    v_seq_locker tblLocker.seq_locker%type;
    
begin
    select seq_locker into v_seq_locker
    from tblLocker
    where seq_traineeList is null
    and rownum = 1;
    
    update tblLocker
    set seq_traineelist = p_seq_traineeList
    where seq_locker = v_seq_locker;
    
    -- 배정 결과를 출력합니다.
    dbms_output.put_line('교육생이 사물함에 자동으로 배정되었습니다.');
exception
    when no_data_found then
        dbms_output.put_line('비어있는 사물함이 없습니다.');
    when others then
        dbms_output.put_line('오류가 발생했습니다.');
end procAutoInsertlocker;
/
begin
    procAutoInsertlocker(71, 3);
end;
/

-- B-16. 취업현황 조회 및 관리
-- 조회
create or replace procedure procSelectemploymentStatus (
    p_curriculum in number
)
is
    p_seq_employmentStatus tblEmploymentStatus.seq_employmentStatus%type;
    p_seq_traineeList tblTraineeList.seq_traineeList%type;
    p_seq_openCurriculum tblOpenCurriculum.seq_openCurriculum%type;
    p_name tblCurriculum.name%type;
    p_estatus tblEmploymentStatus.status%type;
    p_city tblEmploymentStatus.city%type;
    p_field tblEmploymentStatus.field%type;
    p_salary tblEmploymentStatus.salary%type;
cursor vcursor is
select 
es.seq_employmentStatus as "번호", 
tl.seq_traineeList as "교육생 목록 번호", 
oc.seq_openCurriculum as "개설 교육과정 번호", 
c.name as "교육 과정", 
es.status as "취업 여부", 
es.city as "지역", 
es.field as "분야", 
es.salary as "연봉" 
from tblEmploymentStatus es
    left outer join tblTraineeList tl
        on tl.seq_traineeList = es.seq_traineeList
            inner join tblOpenCurriculum oc
                on oc.seq_openCurriculum = tl.seq_openCurriculum
                    inner join tblCurriculum c
                        on oc.seq_curriculum = c.seq_curriculum
                            where oc.seq_openCurriculum = p_curriculum
                                order by es.seq_employmentStatus;
begin
open vcursor;
loop
fetch vcursor into p_seq_employmentStatus, p_seq_traineeList, p_seq_openCurriculum, p_name, p_estatus, p_city, p_field, p_salary;
exit when vcursor%notfound;
dbms_output.put_line('번호: ' || p_seq_employmentStatus || '| 교육생 목록 번호: ' || p_seq_traineeList || '| 교육 과정: ' || p_seq_openCurriculum || '| 취업 여부: ' || p_estatus || '| 지역: ' || p_city || '| 분야: ' || p_field || '| 연봉: ' || p_salary);
dbms_output.put_line('-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
end loop;
close vcursor;   
end procSelectemploymentStatus;
/

begin
    procSelectemploymentStatus(1);
end;
/

--c-1.1 강의 스케줄 
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
    vtl_seq_opencurriculum number;
    
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
count(tl.seq_opencurriculum) as "교육생 등록 인원" 
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
                                                                                      where t.name = ptname    
                                                                                         group by c.name, cp.status, oc.startDate,oc.endDate,s.seq_subject,s.name,
                                                                                           os.startdate,os.enddate,tb.name;
                                                                                  

BEGIN
    OPEN vcursor;
    LOOP
        FETCH vcursor INTO  vc_name,vcp_status, voc_startdate,voc_enddate,vs_seq_subject, vs_name, vos_startdate, vos_enddate, vtb_name, vtl_seq_opencurriculum;
        EXIT WHEN vcursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE( '과정명: ' || vc_name || '| 과정상태'  || vcp_status|| '| 과정시작일: ' || voc_startdate || ' | 과정종료일: ' ||  voc_enddate ||
                                               '| 과목번호'||vs_seq_subject|| '| 과목명: ' ||vs_name ||'| 과목시작일: ' || vos_startdate || '| 과목종료일: ' ||  vos_enddate ||
                                                '| 교재명'|| vtb_name||'| 등록인원' ||  vtl_seq_opencurriculum);
      dbms_output.put_line ('----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');         
    END LOOP;
    CLOSE vcursor;
END proctschedule;
/

begin
proctschedule('김민곤');
end;
/


--c-1.2교육중인 과정에 등록된 교육생 정보(교육생 이름, 전화번호, 등록일, 수료 또는 중도탈락)을 확인할 수 있어야 한다.
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


--혜정
--c-2 배점 입출력
-- 1. 교사가 강의를 마친 과목에 대한 성적 처리를 위해서 배점 입출력을 할 수 있어야 한다.
-- 3. 출결, 필기, 실기의 배점 비중은 담당 교사가 과목별로 결정한다. 단, 출결은 최소 20점 이상이어야 하고, 출결, 필기, 실기의 합은 100점이 되도록 한다.
-- 1.1. 배점 입력
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

begin
    procTestInfoIn(1, 1, 1, 40, 40, 20);
end;
/


-- 1.2.배점 출력
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

begin
    procTestInfoOut(1, 1);
end;
/
        

-- 2. 교사는 자신이 강의를 마친 과목의 목록 중에서 특정 과목을 선택하고 해당 과목의 배점 정보를 출결, 필기, 실기로 구분해서 등록할 수 있어야 한다.(위에서 구현 완료) 시험 날짜, 시험 문제를 추가할 수 있어야 한다.
-- 2.5. 시험 날짜 추가
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

begin
    procTestDateIn(1, 1, TO_DATE('2023-10-03', 'YYYY-MM-DD'), TO_DATE('2023-10-04', 'YYYY-MM-DD'));
end;
/


-- 2.6. 시험 문제 추가
create or replace procedure procTestQuestionIn (
    pSeq_teacher in number,
    pSeq_question in number,
    pSeq_openSubjectList in number,
    pSeq_examPaper in number,
    pQuestion in varchar2,
    pAnswer in varchar2,
    pKind in varchar2    
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
                    and ti.seq_openSubjectList = pSeq_openSubjectList;

    -- enddate가 오늘 이전인 경우에만 시험 문제 추가
    if vEnddate < sysdate then
        -- 시험 문제 추가
        insert into tblQuestion (seq_question, question, answer)
        values (pSeq_question, pQuestion, pAnswer);
        
        insert into Tblexampaper (seq_examPaper, seq_question, seq_openSubjectList, kind) 
        values (pSeq_examPaper, pSeq_question, pSeq_openSubjectList, pKind);

        if sql%rowcount = 0 then
            dbms_output.put_line('해당 시험 정보가 존재하지 않습니다.');
        else
            dbms_output.put_line('시험 문제가 추가되었습니다.');
        end if;
    else
        dbms_output.put_line('해당 과목은 아직 종료되지 않았습니다.');
    end if;
end procTestQuestionIn;
/

begin
    procTestQuestionIn(1, 1, 1, 1, '자바 소스 확장자는?', '3', '필기');
end;
/


-- 교사 번호를 입력하면 본인이 수강 중인 과목 목록 다 출력
-- 4. 과목 목록 출력 시 과목번호, 과정명, 과정기간(시작 년월일, 끝 년월일), 강의실, 과목명, 과목기간(시작 년월일, 끝 년월일), 교재명, 출결, 필기, 실기 배점 등이 출력되고, 
-- 특정 과목을 과목번호로 선택 시 출결 배점, 필기 배점, 실기 배점, 시험 날짜, 시험 문제를 입력할 수 있는 화면으로 연결되어야 한다. (자바에서 구현해야할 듯)
-- 5. 배점 등록이 안 된 과목인 경우는 과목 정보가 출력될 때 배점 부분은 null 값으로 출력한다.
create or replace procedure procSubjectListOut (
    pSeq_teacher in number
) 
is
 cursor vcursor is
        select 
        vc.seq_openSubjectList "과정 번호",
        vc.seq_subject "과목 번호",
        vc.c_name "과정명",
        vc.oc_startDate "과정 시작일",
        vc.oc_enddate "과정 종료일",
        vc.r_name 강의실,
        vc.s_name 과목명,
        vc.osl_startdate "과목 시작일",
        vc.osl_enddate "과목 종료일",
        b.name 교재명,
        ti.attendancePoints "출결 배점",
        ti.writtenPoints "필기 배점",
        ti.practicalPoints "실기 배점"
        from vwCurriculum vc
            inner join tblTextbook b
                on b.seq_textbook = vc.seq_textbook
                    inner join tblTestInfo ti
                        on ti.seq_openSubjectList = vc.seq_openSubjectList
                            where vc.seq_teacher = pSeq_teacher
                            and vc.osl_enddate < sysdate;
                            
    vrecord vcursor%rowtype;
    
begin
    -- 정보 출력
     open vcursor;
    loop
        fetch vcursor into vrecord;
        exit when vcursor%notfound;
        dbms_output.put_line('과정 번호: ' || vrecord."과정 번호");
        dbms_output.put_line('과목 번호: ' || vrecord."과목 번호");
        dbms_output.put_line('과정명: ' || vrecord."과정명");
        dbms_output.put_line('과정 시작일: ' || vrecord."과정 시작일");
        dbms_output.put_line('과정 종료일: ' || vrecord."과정 종료일");
        dbms_output.put_line('강의실: ' || vrecord.강의실);
        dbms_output.put_line('과목명: ' || vrecord.과목명);
        dbms_output.put_line('과목 시작일: ' || vrecord."과목 시작일");
        dbms_output.put_line('과목 종료일: ' || vrecord."과목 종료일");
        dbms_output.put_line('교재명: ' || vrecord.교재명);
        dbms_output.put_line('출결 배점: ' || vrecord."출결 배점");
        dbms_output.put_line('필기 배점: ' || vrecord."필기 배점");
        dbms_output.put_line('실기 배점: ' || vrecord."실기 배점");
        dbms_output.put_line('-----------------------------------------------------------------------------------');
    end loop;
    close vcursor;
exception
    when no_data_found then
        dbms_output.put_line('해당 과목이 존재하지 않습니다.');
    when others then
        dbms_output.put_line('오류 발생: ' || SQLERRM);
end procSubjectListOut;
/

begin
    procSubjectListOut(1);
end;
/


--c-3 성적 입출력
-- 3.1. 성적 입력
-- 3.1.1. 교사는 자신이 강의를 마친 과목의 목록 중에서 특정 과목을 선택한다. > 교육생 정보가 출력
create or replace procedure procTraineeInfoOut (
    pSeq_teacher in number,
    pSeq_openSubjectList in number
) 
is
 cursor vcursor is
        select 
        distinct osl.seq_subjectList "과목 목록 번호",
        vt.seq_trainee "학생 번호",
        vt.t_name "이름",
        vt.t_id "아이디",
        vt.t_tel "전화번호"
        from  vwTrainees vt
            inner join tblOpenSubjectList osl
                on osl.seq_openCurriculum = vt.seq_openCurriculum
                    where osl.seq_teacher = pSeq_teacher
                    and osl.seq_openSubjectList = pSeq_openSubjectList
                    and osl.enddate < sysdate;
                            
    vrecord vcursor%rowtype;
    
begin
    -- 정보 출력
    open vcursor;
    loop
        fetch vcursor into vrecord;
        exit when vcursor%notfound;
        
        -- 정보 출력
        dbms_output.put_line('과목 목록 번호: ' || vrecord."과목 목록 번호");
        dbms_output.put_line('학생 번호: ' || vrecord."학생 번호");
        dbms_output.put_line('이름: ' || vrecord."이름");
        dbms_output.put_line('아이디: ' || vrecord."아이디");
        dbms_output.put_line('전화번호: ' || vrecord."전화번호");
        dbms_output.put_line('-----------------------------------------------------------------------------------');
    end loop;
    
    close vcursor;
exception
    when no_data_found then
        dbms_output.put_line('해당 정보가 없습니다.');
    when others then
        dbms_output.put_line('오류 발생: ' || SQLERRM);
end procTraineeInfoOut;
/

begin
    procTraineeInfoOut (1, 1);
end;
/

-- 3.2. 성적 출력
create or replace procedure procTestGradesOut (
    pSeq_teacher in number,
    pSeq_openSubjectList in number
) 
is
    cursor vcursor is
        select
        distinct tl.seq_traineeList "교육생 목록 번호",
        t.name 이름,
        t.tel 전화번호,
        tl.status 상태,
        tl.day "상태 완료 날짜",
        g.attendanceGrade "출결 점수",
        g.writtenGrade "필기 점수",
        g.practicalGrade "실기 점수"
        from tblTraineeList tl
            left outer join tblOpenSubjectList osl
                on osl.seq_openCurriculum = tl.seq_openCurriculum
                    left outer join tblGrades g
                        on g.seq_traineeList = tl.seq_traineeList
                            left outer join tblTrainees t
                                on t.seq_trainee = tl.seq_trainee
                                    where osl.seq_teacher = pSeq_teacher
                                    and osl.seq_openSubjectList = pSeq_openSubjectList
                                    and osl.endDate < sysdate;
                            
    vrecord vcursor%rowtype;
    vCompletion varchar2(10);
    
begin
    -- 정보 출력
    open vcursor;
    loop
        fetch vcursor into vrecord;
        exit when vcursor%notfound;
        
        -- 출결, 필기, 실기 점수가 모두 입력된 경우에만 "완료" 출력
        if vrecord."출결 점수" is not null and vrecord."필기 점수" is not null and vrecord."실기 점수" is not null then
            vCompletion := '완료';
        else
            vCompletion := '미완료';
        end if;
        
        -- 정보 출력
        dbms_output.put_line('교육생 목록 번호: ' || vrecord."교육생 목록 번호");
        dbms_output.put_line('이름: ' || vrecord."이름");
        dbms_output.put_line('전화번호: ' || vrecord."전화번호");
        dbms_output.put_line('상태: ' || vrecord."상태");
        dbms_output.put_line('상태 완료 날짜: ' || vrecord."상태 완료 날짜");
        dbms_output.put_line('출결 점수: ' || vrecord."출결 점수");
        dbms_output.put_line('필기 점수: ' || vrecord."필기 점수");
        dbms_output.put_line('실기 점수: ' || vrecord."실기 점수");
        dbms_output.put_line('성적 등록 여부: ' || vCompletion);
        dbms_output.put_line('-----------------------------------------------------------------------------------');
    end loop;
    
    close vcursor;
exception
    when no_data_found then
        dbms_output.put_line('해당 정보가 없습니다.');
    when others then
        dbms_output.put_line('오류 발생: ' || SQLERRM);
end procTestGradesOut;
/

begin
    procTestGradesOut (1, 1);
end;
/


--c-4 
-- 4.1. 기간별로, 출결 상황을 구분하여 조회한다.
-- 출결 현황을 기간별(전체, 월, 일) 조회할 수 있어야 한다.
-- 모든 출결 조회는 근태 상황을 구분할 수 있어야 한다.(정상, 지각, 조퇴, 외출, 병가, 기타)
-- 교사가 강의한 과정에 한해 선택하는 경우 모든 교육생의 출결을 조회할 수 있어야 한다.
create or replace procedure procTraineeAttendanceOut (
    pSeq_teacher in number,
    pSeq_openSubjectList in number,
    pStartDate in date,
    pEndDate in date
) 
is
    cursor vcursor is
        select 
        vc.seq_openCurriculum "개설 교육과정 번호",
        asl.seq_subject "과목 번호",
        tl.seq_trainee "교육생 번호",
        a.day 날짜,
        to_char(a.inTime, 'HH24:MI:SS') "출근 시간",
        to_char(a.outTime, 'HH24:MI:SS') "퇴근 시간",
        tas.situation "상태"
        from vwCurriculum vc
            inner join tblAvailableSubjectList asl
                on asl.seq_subject = vc.seq_subject
                    inner join tblTraineeList tl
                        on tl.seq_openCurriculum = vc.seq_openCurriculum
                            inner join tblAttendance a
                                on a.seq_traineeList = tl.seq_traineeList
                                    inner join tblAttendanceStatus tas
                                        on tas.seq_attendanceStatus = a.seq_attendanceStatus
                                            where a.inTime between pStartDate and pEndDate
                                            and vc.seq_teacher = pSeq_teacher
                                            and vc.seq_openSubjectList = pSeq_openSubjectList
                                            order by tl.seq_trainee;
    vrecord vcursor%rowtype;
    
begin
    -- 정보 출력
    open vcursor;
    loop
        fetch vcursor into vrecord;
        exit when vcursor%notfound;
        
        -- 정보 출력
        dbms_output.put_line('개설 교육과정 번호: ' || vrecord."개설 교육과정 번호");
        dbms_output.put_line('과목 번호: ' || vrecord."과목 번호");
        dbms_output.put_line('교육생 번호: ' || vrecord."교육생 번호");
        dbms_output.put_line('날짜: ' || vrecord.날짜);
        dbms_output.put_line('출근 시간: ' || vrecord."출근 시간");
        dbms_output.put_line('퇴근 시간: ' || vrecord."퇴근 시간");
        dbms_output.put_line('상태: ' || vrecord.상태);
        dbms_output.put_line('-----------------------------------------------------------------------------------');
    end loop;
    
    close vcursor;
exception
    when no_data_found then
        dbms_output.put_line('해당 정보가 없습니다.');
    when others then
        dbms_output.put_line('오류 발생: ' || SQLERRM);
end procTraineeAttendanceOut;
/

begin
    procTraineeAttendanceOut (1, 1, to_date('2023-09-04', 'YYYY-MM-DD'), to_date('2023-10-04', 'YYYY-MM-DD'));
end;
/

-- 4.1.2. 특정(특정 과정, 특정 인원) 출결 현황을 조회할 수 있어야 한다.
-- 특정 과정
create or replace procedure procSpecificCurriculumAttendanceOut (
    pSeq_teacher in number,
    pSeq_openSubjectList in number,
    pSeq_openCurriculum in number
) 
is
    cursor vcursor is
        select 
        vc.seq_openCurriculum "개설 교육과정 번호",
        asl.seq_subject "과목 번호",
        tl.seq_trainee "교육생 번호",
        a.day 날짜,
        to_char(a.inTime, 'HH24:MI:SS') "출근 시간",
        to_char(a.outTime, 'HH24:MI:SS') "퇴근 시간"
        from vwCurriculum vc
            inner join tblAvailableSubjectList asl
                on asl.seq_subject = vc.seq_subject
                    inner join tblTraineeList tl
                        on tl.seq_openCurriculum = vc.seq_openCurriculum
                            inner join tblAttendance a
                                on a.seq_traineeList = tl.seq_traineeList
                                    where vc.seq_openCurriculum = pSeq_openCurriculum
                                        and vc.seq_teacher = pSeq_teacher
                                        and vc.seq_openSubjectList = pSeq_openSubjectList
                                        order by tl.seq_trainee;
    vrecord vcursor%rowtype;
    
begin
    -- 정보 출력
    open vcursor;
    loop
        fetch vcursor into vrecord;
        exit when vcursor%notfound;
        
        -- 정보 출력
        dbms_output.put_line('개설 교육과정 번호: ' || vrecord."개설 교육과정 번호");
        dbms_output.put_line('과목 번호: ' || vrecord."과목 번호");
        dbms_output.put_line('교육생 번호: ' || vrecord."교육생 번호");
        dbms_output.put_line('날짜: ' || vrecord.날짜);
        dbms_output.put_line('출근 시간: ' || vrecord."출근 시간");
        dbms_output.put_line('퇴근 시간: ' || vrecord."퇴근 시간");
        dbms_output.put_line('-----------------------------------------------------------------------------------');
    end loop;
    
    close vcursor;
exception
    when no_data_found then
        dbms_output.put_line('해당 정보가 없습니다.');
    when others then
        dbms_output.put_line('오류 발생: ' || SQLERRM);
end procSpecificCurriculumAttendanceOut;
/

begin
    procSpecificCurriculumAttendanceOut (1, 1, 7);
end;
/


-- 특정 인원
create or replace procedure procSpecificTraineeAttendanceOut (
    pSeq_teacher in number,
    pSeq_openSubjectList in number,
    pSeq_trainee in number
) 
is
    cursor vcursor is
        select 
        vc.seq_openCurriculum "개설 교육과정 번호",
        asl.seq_subject "과목 번호",
        tl.seq_trainee "교육생 번호",
        a.day 날짜,
        to_char(a.inTime, 'HH24:MI:SS') "출근 시간",
        to_char(a.outTime, 'HH24:MI:SS') "퇴근 시간"
        from vwCurriculum vc
            inner join tblAvailableSubjectList asl
                on asl.seq_subject = vc.seq_subject
                    inner join tblTraineeList tl
                        on tl.seq_openCurriculum = vc.seq_openCurriculum
                            inner join tblAttendance a
                                on a.seq_traineeList = tl.seq_traineeList
                                    where vc.seq_openSubjectList = pSeq_openSubjectList
                                        and vc.seq_teacher = pSeq_teacher
                                        and tl.seq_trainee = pSeq_trainee
                                        order by tl.seq_trainee;
    vrecord vcursor%rowtype;
    
begin
    -- 정보 출력
    open vcursor;
    loop
        fetch vcursor into vrecord;
        exit when vcursor%notfound;
        
        -- 정보 출력
        dbms_output.put_line('개설 교육과정 번호: ' || vrecord."개설 교육과정 번호");
        dbms_output.put_line('과목 번호: ' || vrecord."과목 번호");
        dbms_output.put_line('교육생 번호: ' || vrecord."교육생 번호");
        dbms_output.put_line('날짜: ' || vrecord.날짜);
        dbms_output.put_line('출근 시간: ' || vrecord."출근 시간");
        dbms_output.put_line('퇴근 시간: ' || vrecord."퇴근 시간");
        dbms_output.put_line('-----------------------------------------------------------------------------------');
    end loop;
    
    close vcursor;
exception
    when no_data_found then
        dbms_output.put_line('해당 정보가 없습니다.');
    when others then
        dbms_output.put_line('오류 발생: ' || SQLERRM);
end procSpecificTraineeAttendanceOut;
/

begin
    procSpecificTraineeAttendanceOut (1, 1, 1);
end;
/


--C-5강사가 자신의 이름 검색 하면 수료한 학생들이 작성한 평가 확인 하는 프로시저
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
      DBMS_OUTPUT.PUT_LINE('점수: ' || vce_grade || '| 내용: ' || vce_content);
        dbms_output.put_line('----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
    end loop;
    close vcursor;
end procTce;
/

begin
proctce('김민곤');
end;
/


--D-1.1강사명 검색시 과목별 정보와 배점,시험문제 조회
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


--D-1.2교육생 이름으로 성적 검색 프로시저
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

        DBMS_OUTPUT.PUT_LINE('수강생이름: ' || vt_name || ' | 과목명: ' || vs_name || '|  과목시작일: ' || vosl_startdate || '| 과목종료일: ' || vosl_enddate ||
                             '| 필기날짜: ' || vg_writtenDate || '| 실기날짜: ' || vg_practicalDate || '| 필기점수: ' || vg_writtenGrade || '| 실기점수: ' || vg_practicalGrade ||
                             '| 출결점수: ' || vg_attendanceGrade);
         dbms_output.put_line('----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
    END LOOP;
    CLOSE vcursor;
END proctg;
/

begin
proctg('곤백안');
end;
/


-- D-1 
-- 성적조회
CREATE OR REPLACE PROCEDURE procTraineeInfo(
    p_name IN vwtrainees.t_name%TYPE
) IS
    CURSOR c_info IS
        SELECT DISTINCT vt.t_name, vt.t_id, vt.t_ssn, vt.t_tel, vc.s_name, vc.osl_startdate, vc.osl_enddate 
        FROM vwtrainees vt
        INNER JOIN vwgrades vg ON vt.seq_opencurriculum = vg.seq_opencurriculum
        INNER JOIN vwCurriculum vc ON vc.seq_opensubjectlist = vg.seq_opensubjectlist
        WHERE vt.t_name = p_name
        ORDER BY vt.t_name, vt.t_id, vt.t_ssn, vt.t_tel, vc.s_name, vc.osl_startdate, vc.osl_enddate;
    v_info c_info%ROWTYPE;
BEGIN
    OPEN c_info;
    LOOP
        FETCH c_info INTO v_info;
        EXIT WHEN c_info%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('교육생 이름: ' || v_info.t_name || ', 아이디: ' || v_info.t_id || ', 주민등록번호: ' || v_info.t_ssn || ', 전화번호: ' || v_info.t_tel || ', 과목 이름: ' || v_info.s_name || ', 시작 날짜: ' || v_info.osl_startdate || ', 종료 날짜: ' || v_info.osl_enddate);
    END LOOP;
    CLOSE c_info;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('해당 이름을 가진 교육생의 정보를 찾을 수 없습니다.');
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END procTraineeInfo;
/

BEGIN
    procTraineeInfo('모백양');
END;
/


--D-3
--교육 과정 평가 (수료 학생만 가능) 
CREATE OR REPLACE PROCEDURE procAddCurriculumEvaluation(
    p_seq_curriculum IN tblCurriculumEvaluation.seq_opencurriculum%TYPE,
    p_seq_opencurriculum IN tblCurriculumEvaluation.seq_opencurriculum%TYPE,
    p_seq_trainee IN tblCurriculumEvaluation.seq_traineelist%TYPE,
    p_score IN tblCurriculumEvaluation.grade%TYPE,
    p_comment IN tblCurriculumEvaluation.content%TYPE
) IS
    CURSOR c_trainee IS
        SELECT s.name, tl.status FROM tbltraineelist tl
        INNER JOIN tbltrainees s ON s.seq_trainee = tl.seq_trainee;
    v_trainee c_trainee%ROWTYPE;
BEGIN
    OPEN c_trainee;
    LOOP
        FETCH c_trainee INTO v_trainee;
        EXIT WHEN c_trainee%NOTFOUND;

        IF v_trainee.status = '수료' THEN
            INSERT INTO tblCurriculumEvaluation VALUES (p_seq_curriculum, p_seq_opencurriculum, p_seq_trainee, p_score, p_comment);
            DBMS_OUTPUT.PUT_LINE('교육생 이름: ' || v_trainee.name || ', 상태: ' || v_trainee.status || ', 교육 평가 정보가 추가되었습니다.');
        END IF;
    END LOOP;
    CLOSE c_trainee;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('교육 평가 정보 추가에 실패하였습니다.');
        RAISE;
END procAddCurriculumEvaluation;
/

BEGIN
    procAddCurriculumEvaluation(1, 1, 1, 5, '설명을 자세하게 해주신다.');
END;
/


-- D-4 
-- 교사 추천 도서 조회 
create or replace procedure procTextbookInfo(
    pSeq_trainee in varchar2
) 
is
    cursor vcursor is
        select 
        distinct osl.seq_opencurriculum 교육과정명,
        tea.name 교사명,
        rb.grade 별점,
        b.name "책 제목",
        b.publisher "출판사명"
        from tblrecommendtextbook rb
            inner join tblopensubjectlist osl
                on rb.seq_teacher = osl.seq_teacher
                    inner join tbltraineelist tl
                        on tl.seq_opencurriculum = osl.seq_opencurriculum
                            inner join tblteacher tea
                                on tea.seq_teacher = osl.seq_teacher
                                    inner join tbltextbook b
                                        on b.seq_textbook = rb.seq_textbook
                                            where osl.seq_teacher = rb.seq_teacher
                                            and tl.seq_trainee = pSeq_trainee;

    vrecord vcursor%rowtype;
begin
    open vcursor;
    loop
        fetch vcursor into vrecord;
        exit when vcursor%notfound;
        
                dbms_output.put_line('교육과정명: ' || vrecord.교육과정명 || ', 교사명: ' || vrecord.교사명 || ', 별점: ' || vrecord.별점 || ', 책 제목: ' || vrecord."책 제목" || ', 출판사명: ' || vrecord."출판사명");
                dbms_output.put_line('----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
    end loop;
    close vcursor;
exception
    when no_data_found then
        dbms_output.put_line('교과서 정보를 찾을 수 없습니다.');
    when others then
        rollback;
        raise;
end procTextbookInfo;
/

begin
    procTextbookInfo(1);
end;
/

