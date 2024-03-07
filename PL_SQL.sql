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
/


-- B-6 
--입력 
CREATE OR REPLACE PROCEDURE procAddTrainees(
    p_seq_trainee IN tbltrainees.seq_trainee%TYPE,
    p_name IN tbltrainees.name%TYPE,
    p_id IN tbltrainees.id%TYPE,
    p_ssn IN tbltrainees.ssn%TYPE,
    p_tel IN tbltrainees.tel%TYPE,
    p_Registrationdate IN tbltrainees.Registrationdate%TYPE,
    p_bank IN tbltrainees.bank%TYPE,
    p_account IN tbltrainees.account%TYPE
) IS
BEGIN
    INSERT INTO tbltrainees (seq_trainee, name, id, ssn, tel, registrationdate, bank, account)
    VALUES (p_seq_trainee, p_name, p_id, p_ssn, p_tel, p_Registrationdate, p_bank, p_account);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('교육생 정보가 성공적으로 추가되었습니다.');
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        DBMS_OUTPUT.PUT_LINE('이미 존재하는 교육생 번호입니다.');
        ROLLBACK;
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END procAddTrainees;

/
BEGIN
    procAddTrainees(1, '이채린', 'linear99', '2049178', '01012345678', sysdate, '우리은행', '012-592-384171');
END;
/
--수정
/
CREATE OR REPLACE PROCEDURE procUpdateTraineesSsn(
    p_ssn IN tblTrainees.ssn%TYPE,
    p_name IN tblTrainees.name%TYPE
) IS
BEGIN
    UPDATE tblTrainees 
    SET ssn = p_ssn 
    WHERE name = p_name;
    
    IF SQL%ROWCOUNT = 0 THEN
        DBMS_OUTPUT.PUT_LINE('해당 이름을 가진 교육생이 없습니다.');
    ELSE
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('교육생 정보가 성공적으로 업데이트되었습니다.');
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END procUpdateTraineesSsn;
/
BEGIN
    procUpdateTraineesSsn('2050692', '이채린');
END;
/
-- 삭제
/
CREATE OR REPLACE PROCEDURE procDeleteTrainees(
    p_name IN tblTrainees.name%TYPE
) IS
BEGIN
    DELETE FROM tblTrainees WHERE name = p_name;
    
    IF SQL%ROWCOUNT = 0 THEN
        DBMS_OUTPUT.PUT_LINE('해당 이름을 가진 교육생이 없습니다.');
    ELSE
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('교육생 정보가 성공적으로 삭제되었습니다.');
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END procDeleteTrainees;

/
BEGIN
    procDeleteTrainees('이채린');
END;


/



-- 검색
CREATE OR REPLACE PROCEDURE procTraineesCoursesInfo IS
    CURSOR c_trainees IS
        SELECT t.name,t.ssn,t.tel,t.registrationdate,COUNT(CASE WHEN tl.status = '수료' THEN 1 END ) AS "수강횟수"
        FROM tbltraineelist tl
        INNER JOIN tbltrainees t ON tl.seq_trainee = t.seq_trainee
        GROUP BY t.name,t.ssn,t.tel,t.registrationdate;
    v_trainees c_trainees%ROWTYPE;
BEGIN
    OPEN c_trainees;
    LOOP
        FETCH c_trainees INTO v_trainees;
        EXIT WHEN c_trainees%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('이름: ' || v_trainees.name || ', 주민등록번호: ' || v_trainees.ssn || ', 전화번호: ' || v_trainees.tel || ', 등록날짜: ' || v_trainees.registrationdate || ', 수강횟수: ' || v_trainees."수강횟수");
    END LOOP;
    CLOSE c_trainees;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('교육생 정보를 찾을 수 없습니다.');
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END procTraineesCoursesInfo;


/
BEGIN
    procTraineesCoursesInfo;
END;

/
-- b-7
-- 과목별
CREATE OR REPLACE PROCEDURE select_curriculum_by_subject(
    p_subject IN vwcurriculum.s_name%TYPE
) IS
    CURSOR c_curriculum IS
        SELECT vc.c_name,vt.t_name,vc.s_name,vc.period,vc.r_name,vt.t_ssn,vg.writtengrade,vg.practicalgrade 
        FROM vwcurriculum vc
        INNER JOIN vwtrainees vt ON vt.seq_opencurriculum = vc.seq_opencurriculum
        INNER JOIN vwgrades vg ON vg.seq_traineelist = vt.seq_traineelist
        WHERE vc.s_name = p_subject
        GROUP BY vc.c_name,vt.t_name,vc.s_name,vc.period,vc.r_name,vt.t_ssn,vg.writtengrade,vg.practicalgrade;
    v_curriculum c_curriculum%ROWTYPE;
BEGIN
    OPEN c_curriculum;
    LOOP
        FETCH c_curriculum INTO v_curriculum;
        EXIT WHEN c_curriculum%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('과정 이름: ' || v_curriculum.c_name || ', 교육생 이름: ' || v_curriculum.t_name || ', 주제: ' || v_curriculum.s_name || ', 기간: ' || v_curriculum.period || ', 강의실 이름: ' || v_curriculum.r_name || ', 주민등록번호: ' || v_curriculum.t_ssn || ', 필기 성적: ' || v_curriculum.writtengrade || ', 실기 성적: ' || v_curriculum.practicalgrade);
    END LOOP;
    CLOSE c_curriculum;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('해당 주제를 가진 과정 정보를 찾을 수 없습니다.');
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END select_curriculum_by_subject;
/
BEGIN
    select_curriculum_by_subject('AWS');
END;
/


-- 특정 개설 과정
/
CREATE OR REPLACE PROCEDURE procGradesCourseInfo(
    p_course IN vwcurriculum.c_name%TYPE
) IS
 
    CURSOR c_grades IS
        SELECT vt.t_name, vc.c_name, vc.s_name, t.name, vg.writtengrade, vg.practicalgrade
        FROM vwgrades vg
        INNER JOIN vwtrainees vt ON vt.seq_traineelist = vg.seq_traineelist
        INNER JOIN vwcurriculum vc ON vc.seq_subject = vg.seq_subject
        INNER JOIN tblteacher t ON t.seq_teacher = vc.seq_teacher
        WHERE vc.c_name = p_course
        GROUP BY vt.t_name, vc.c_name, vc.s_name, t.name, vg.writtengrade, vg.practicalgrade;
    v_grades c_grades%ROWTYPE;
BEGIN
    OPEN c_grades;
    LOOP
        FETCH c_grades INTO v_grades;
        EXIT WHEN c_grades%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('교육생 이름: ' || v_grades.t_name || ', 과정 이름: ' || v_grades.c_name || ', 주제: ' || v_grades.s_name || ', 강사 이름: ' || v_grades.name || ', 필기 성적: ' || v_grades.writtengrade || ', 실기 성적: ' || v_grades.practicalgrade);
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
CREATE OR REPLACE PROCEDURE procTraineeInfo(
    p_name IN vwtrainees.t_name%TYPE
) IS
    CURSOR c_trainee IS
        SELECT vt.t_name, vt.t_ssn, vc.c_name, vc.oc_startdate, vc.oc_enddate, vc.r_name, vc.s_name, vc.period, vg.writtengrade, vg.practicalgrade
        FROM vwgrades vg
        INNER JOIN vwtrainees vt ON vt.seq_traineelist = vg.seq_traineelist
        INNER JOIN vwcurriculum vc ON vc.seq_subject = vg.seq_subject
        WHERE vt.t_name = p_name
        GROUP BY vt.t_name, vt.t_ssn, vc.c_name, vc.oc_startdate, vc.oc_enddate, vc.r_name, vc.c_name, vc.period, vc.s_name, vg.writtengrade, vg.practicalgrade;
    
    v_trainee c_trainee%ROWTYPE;
BEGIN
    OPEN c_trainee;
    LOOP
        FETCH c_trainee INTO v_trainee;
        EXIT WHEN c_trainee%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE('교육생 이름: ' || v_trainee.t_name || ', 주민등록번호: ' || v_trainee.t_ssn || ', 과정 이름: ' || v_trainee.c_name || ', 시작 날짜: ' || v_trainee.oc_startdate || ', 종료 날짜: ' || v_trainee.oc_enddate || ', 강의실: ' || v_trainee.r_name || ', 과목 이름: ' || v_trainee.s_name || ', 기간: ' || v_trainee.period || ', 필기 성적: ' || v_trainee.writtengrade || ', 실기 성적: ' || v_trainee.practicalgrade);
    END LOOP;
    CLOSE c_trainee;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('해당 교육생의 정보를 찾을 수 없습니다.');
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END procTraineeInfo;

/
BEGIN
    procTraineeInfo('천유서');
END;


/

-- b-8
--출결관리
--1. 개설 과정 별
CREATE OR REPLACE PROCEDURE procCourseInfo(
    p_course IN tblCurriculum.name%TYPE
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
        GROUP BY t.name, a.day, c.name, ad.situation;
    
    v_course c_course%ROWTYPE;
BEGIN
    OPEN c_course;
    LOOP
        FETCH c_course INTO v_course;
        EXIT WHEN c_course%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE('교육생 이름: ' || v_course.trainee_name || ', 날짜: ' || v_course.day || ', 과정 이름: ' || v_course.course_name || ', 출석 상황: ' || v_course.situation);
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
    procCourseInfo('AWS 클라우드와 Elasticsearch를 활용한 Java Full-Stack 과정(B)');
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


-- b-9
CREATE OR REPLACE PROCEDURE procCurriculumEvaluation IS
    CURSOR c_evaluation IS
        SELECT t.name, ce.grade, ce.content 
        FROM tblcurriculumevaluation ce
        INNER JOIN tblopencurriculum oc ON ce.seq_opencurriculum = oc.seq_opencurriculum
        INNER JOIN tblopensubjectlist osl ON osl.seq_opencurriculum = oc.seq_opencurriculum
        INNER JOIN tblteacher t ON t.seq_teacher = osl.seq_teacher
        GROUP BY t.name, ce.grade, ce.content;
    v_evaluation c_evaluation%ROWTYPE;
BEGIN
    OPEN c_evaluation;
    LOOP
        FETCH c_evaluation INTO v_evaluation;
        EXIT WHEN c_evaluation%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('교사 이름: ' || v_evaluation.name || ', 평가 점수: ' || v_evaluation.grade || ', 평가 내용: ' || v_evaluation.content);
    END LOOP;
    CLOSE c_evaluation;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('과정 평가 정보를 찾을 수 없습니다.');
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END procCurriculumEvaluation;
/
BEGIN
    procCurriculumEvaluation;
END;
/

-- b-10

--교육 희망자 정보 조회 
CREATE OR REPLACE PROCEDURE procTraineeScheduleInfo IS
    CURSOR c_schedule IS
        SELECT t.name, t.id, t.ssn, t.tel 
        FROM tbltrainees t
        INNER JOIN tblinterviewschedule s ON s.seq_trainee = t.seq_trainee;
    v_schedule c_schedule%ROWTYPE;
BEGIN
    OPEN c_schedule;
    LOOP
        FETCH c_schedule INTO v_schedule;
        EXIT WHEN c_schedule%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('교육생 이름: ' || v_schedule.name || ', 아이디: ' || v_schedule.id || ', 주민등록번호: ' || v_schedule.ssn || ', 전화번호: ' || v_schedule.tel);
    END LOOP;
    CLOSE c_schedule;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('인터뷰 일정이 있는 교육생 정보를 찾을 수 없습니다.');
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END procTraineeScheduleInfo;
/
BEGIN
    procTraineeScheduleInfo;
END;
/
-- 합격자 불합격자 구분

CREATE OR REPLACE PROCEDURE procTraineeResultsInfo IS
    CURSOR c_results IS
        SELECT t.name, r.status 
        FROM tbltrainees t
        INNER JOIN tblinterviewschedule s ON s.seq_trainee = t.seq_trainee
        INNER JOIN tblinterviewresults r ON r.seq_schedule = s.seq_schedule
        ORDER BY r.status;
    v_results c_results%ROWTYPE;
BEGIN
    OPEN c_results;
    LOOP
        FETCH c_results INTO v_results;
        EXIT WHEN c_results%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('교육생 이름: ' || v_results.name || ', 상태: ' || v_results.status);
    END LOOP;
    CLOSE c_results;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('인터뷰 결과가 있는 교육생 정보를 찾을 수 없습니다.');
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END procTraineeResultsInfo;
/
BEGIN
    procTraineeResultsInfo;
END;
/

-- b-11 
--관리자가 교재 정보 추가하는 기능
CREATE OR REPLACE PROCEDURE procAddTextbook(
    p_seq_textbook IN tblTextbook.seq_textbook%TYPE,
    p_name IN tblTextbook.name%TYPE,
    p_publisher IN tblTextbook.publisher%TYPE
) AS
BEGIN
    INSERT INTO tblTextbook VALUES (p_seq_textbook, p_name, p_publisher);

    DBMS_OUTPUT.PUT_LINE('교재 정보가 성공적으로 추가되었습니다.');
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('교재 정보 추가에 실패하였습니다.');
        RAISE;
END procAddTextbook;
/
BEGIN
    procAddTextbook(20, 'OpenCV-Python으로 배우는 영상처리 및 응용', '생능');
END;
/

-- 관리자가 교재 정보 수정 
/
CREATE OR REPLACE PROCEDURE procUpdateTextbookPublisher(
    p_new_publisher IN tblTextbook.publisher%TYPE,
    p_name IN tblTextbook.name%TYPE
) AS
BEGIN
    UPDATE tblTextbook 
    SET publisher = p_new_publisher
    WHERE name = p_name;

    IF SQL%ROWCOUNT > 0 THEN
        DBMS_OUTPUT.PUT_LINE('교재 정보가 성공적으로 업데이트되었습니다.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('업데이트할 교재 정보를 찾을 수 없습니다.');
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('교재 정보 업데이트에 실패하였습니다.');
        RAISE;
END procUpdateTextbookPublisher;
/
BEGIN
    procUpdateTextbookPublisher('에이콘', 'OpenCV-Python으로 배우는 영상처리 및 응용');
END;


-- 관리자가 교재 정보 삭제 
/
CREATE OR REPLACE PROCEDURE procDeleteTextbook(
    p_name IN tblTextbook.name%TYPE
) AS
BEGIN
    DELETE FROM tblTextbook WHERE name = p_name;

    IF SQL%ROWCOUNT > 0 THEN
        DBMS_OUTPUT.PUT_LINE('교재 정보가 성공적으로 삭제되었습니다.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('삭제할 교재 정보를 찾을 수 없습니다.');
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('교재 정보 삭제에 실패하였습니다.');
        RAISE;
END procDeleteTextbook;
/
BEGIN
    procDeleteTextbook('OpenCV-Python으로 배우는 영상처리 및 응용');
END;
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
proctg('곤백안');
end;
/
begin
proctg('곤문권');
end;


-- 원혁
-- PL/SQL
-- B-12 
-- 온라인 강의 수강 여부 확인
declare 
    vname tblTrainees.name%TYPE;
    vtitle tblOnlineLecture.title%TYPE;
    vstatus tblOnlineCourseList.status%TYPE;
cursor vcursor
is
select
    t.name as "이름",
    ol.title as "온라인 강의명",
    oc.status as "수강 여부"
    from tblTrainees t
        inner join tblTraineeList tl 
            on t.seq_trainee = tl.seq_trainee
                inner join tblOnlineCourseList oc 
                    on tl.seq_traineeList = oc.seq_traineeList
                        inner join tblOnlineLecture ol 
                            on oc.seq_onlineLecture = ol.seq_onlineLecture
                                where oc.status = '수강 완료';
begin
    open vcursor;
    loop
    fetch vcursor into vname, vtitle, vstatus;
    exit when vcursor%notfound;
    if vstatus = '수강 완료' then
        dbms_output.put_line('----------------------------------------');
        dbms_output.put_line('이름: ' || vname);
        dbms_output.put_line('온라인 강의명: ' || vtitle);
        dbms_output.put_line('수강 여부: ' || vstatus);
        dbms_output.put_line('----------------------------------------');
    elsif vstatus = '수강 미완료' THEN
        dbms_output.put_line('----------------------------------------');
        dbms_output.put_line(vname || ' ' || vtitle || ' ' || vstatus);
        dbms_output.put_line('----------------------------------------');
    else
        dbms_output.put_line('잘못 입력했거나 조회된 데이터가 없습니다');
    end if;
    end loop;
    close vcursor;
end;
/

-- B-13
-- 출결 서류 인정 관리
-- 등록
create or replace procedure procInsertattendancePapers (
    p_seq_attendancePapers in tblAttendancePapers.seq_attendancePapers%type,
    p_seq_traineeList in tblAttendancePapers.seq_traineeList%type,
    p_status in tblAttendancePapers.status%type,
    p_day in tblAttendancePapers.day%type,
    p_document in tblAttendancePapers.document%type,
    p_admitattendance in tblAttendancePapers.admitattendance%type
)
is
begin
    insert into tblAttendancePapers (seq_attendancePapers, seq_traineeList, status, day, document, admitattendance)
    values (p_seq_attendancePapers, p_seq_traineeList, p_status, p_day, p_document, p_admitattendance);
    dbms_output.put_line('출결 서류 등록이 완료되었습니다.');
end procInsertattendancePapers;
/
begin
    procInsertattendancePapers(1, 1, 조퇴, '2023-09-13', '코로나 진단 서류', '출석 인정');
end;
/

-- 수정
update tblAttendancePapers
    set document = '국민취업지원제도 상담'
        where seq_attendancePapers = 1;

CREATE OR REPLACE PROCEDURE procUpdateAttendancePapers (
    vseq_attendancePapers tblAttendancePapers.seq_attendancePapers%type,
    vdocument tblAttendancePapers.document%type
)
IS
    p_seq_attendancePapers number;
    p_document varchar2(50);
BEGIN
    -- 여기에 변수 초기화 또는 값 할당 코드를 추가할 수 있습니다.
    UPDATE tblAttendancePapers
    SET
        document = p_document
    WHERE
        seq_attendancePapers = p_seq_attendancePapers;
    dbms_output.put_line('수정에 성공했습니다.');
    -- 작업이 성공적으로 완료되면 여기에 추가 작업을 수행할 수 있습니다.

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('수정에 실패했습니다.');
END procUpdateAttendancePapers;
/
begin
    procUpdateattendancePapers(1, '국민취업지원제도상담');
end;
/

-- 조회
select 
t.name as "이름", 
ap.document "제출 서류", 
ap.admitattendance "출석 인정 여부", 
ap.status "출결" 
from tblTrainees t
    inner join tblTraineeList tl
        on t.seq_trainee = tl.seq_trainee
            inner join tblAttendancePapers ap
                on tl.seq_traineeList = ap.seq_traineeList
                    where t.name = '모진백';
-- 호출하기                  
create or replace procedure procSelectattendancePapers (
    pstatus in varchar2
)
is
    vname tblTrainees.name%type;
    vdocument tblAttendancePapers.document%type;
    vadmitattendance tblAttendancePapers.admitattendance%type;
    vstatus tblAttendancePapers.status%type;
cursor vcursor
is
select 
t.name "이름", 
ap.document "제출 서류", 
ap.admitattendance "출석 인정 여부", 
ap.status "출결" 
from tblTrainees t
    inner join tblTraineeList tl
        on t.seq_trainee = tl.seq_trainee
            inner join tblAttendancePapers ap
                on tl.seq_traineeList = ap.seq_traineeList
                    where ap.admitattendance = pstatus;
                    
begin
open vcursor;
loop
    fetch vcursor into vname, vdocument, vadmitattendance, vstatus;
    exit when vcursor%notfound;
    dbms_output.put_line('이름 : ' || vname || ', 제출 서류 : ' || vdocument || ', 출석 인정 여부 : ' || vadmitattendance || ', 출결 : ' || vstatus);
end loop;
close vcursor;
    dbms_output.put_line('조회가 완료되었습니다.');
exception
    when others then
    dbms_output.put_line('잘못 입력하셨습니다.');
end procSelectattendancePapers;
/

begin
    procSelectattendancePapers('출석 인정');
end;
/

-- 삭제
create or replace procedure procDeleteattendancePapers (
p_seq_attendancePapers in tblAttendancePapers.seq_attendancePapers%type
)
is
begin
delete from tblAttendancePapers
where seq_attendancePapers = p_seq_attendancePapers;
dbms_output.put_line('삭제되었습니다.');
exception
when others then
dbms_output.put_line('잘못된 번호입니다');
end procDeleteattendancePapers;
/
begin
    procDeleteattendancePapers(2);
end;
/
-- B-14 기자재 & 사물함 관리
-- 기자재 조회
select * from tblEquipment;

-- 기자재 등록    
    create or replace procedure procInsertequipment (
        p_seq_equipment in tblEquipment.seq_equipment%type,
        p_name in tblEquipment.name%type,
        p_expectedExportDate in tblEquipment.expectedExportDate%type,
        p_amount in tblEquipment.amount%type,
        p_brokenAmount in tblEquipment.brokenAmount%type
    )
    is
    begin
        insert into tblEquipment (seq_equipment, name, expectedExportDate, amount, brokenAmount)
            values (p_seq_equipment, p_name, p_expectedExportDate, p_amount, p_brokenAmount);
        dbms_output.put_line('기자재 등록이 완료되었습니다.');
    end procInsertequipment;
    /
begin
    procInsertequipment(1, '사물함', to_date('2016-01-17', 'yyyy-mm-dd'), null,176,0);
end;
/
-- 기자재 수정
update tblEquipment set amount = 100 where seq_equipment = 1;

create or replace procedure procUpdateequipment (
    p_seq_equipment in tblEquipment.seq_equipment%type,
    p_amount in tblEquipment.amount%type
)
is
begin
    update tblEquipment
    set amount = p_amount
    where seq_equipment = p_seq_equipment;
end procUpdateequipment;
/
begin
    procUpdateequipment(1, 100);
end;
/

-- 삭제
create or replace procedure procDeleteequipment (
    p_seq_equipment in tblEquipment.seq_equipment%type
)
is
begin
    delete from tblEquipment
    where seq_equipment = p_seq_equipment;
    dbms_output.put_line('삭제완료되었습니다');
    exception
    when others then
    dbms_output.put_line('잘못된 번호입니다.');
end procDeleteequipment;
/
begin
    procDeleteequipment(1);
end;
/

-- 사물함 배정 및 관리
-- 1. 등록
create or replace procedure procInsertlocker (
    p_seq_locker in tblLocker.seq_locker%type,
    p_seq_equipment in tblLocker.seq_equipment%type,
    p_seq_traineelist in tblLocker.seq_traineelist%type
)
is
begin
    insert into tblLocker(seq_locker, seq_equipment, seq_traineelist)
        values (p_seq_locker, p_seq_equipment, p_seq_traineelist);
        dbms_output.put_line('등록이 완료되었습니다');
    exception
        when others then
        dbms_output.put_line('등록 중 오류가 발생했습니다');
end procInsertlocker;
/
begin
    procInsertlocker(132, 1, 132);
end;
/

-- 호출하기
-- 2. 조회
create or replace procedure procSelectlocker (
    vname in varchar2
)
is
    p_name tblEquipment.name%type;
    p_seq_locker tblLocker.seq_locker%type;
    p_seq_traineelist tblLocker.seq_traineeList%type;
    p_tname tblTrainees.name%type;
    p_status tblTraineeList.status%type;
    p_day tblTraineeList.day%type;

cursor vcursor
is
select e.name as "기자재명", 
l.seq_locker as "사물함 번호",
l.seq_traineelist as "교육생 목록 번호", 
t.name as "교육생 이름", 
tl.status as "수료 및 중도퇴사", 
tl.day as "수료 및 중도퇴사 날짜"
from tblEquipment e
    inner join tblLocker l
        on e.seq_equipment = l.seq_equipment
            left outer join tblTraineeList tl
                on tl.seq_traineeList = l.seq_traineeList
                    left outer join tblTrainees t
                        on t.seq_trainee = tl.seq_trainee
                            where t.name = vname
                                order by l.seq_locker;
begin
open vcursor;
    loop 
    fetch vcursor into p_name, p_seq_locker, p_seq_traineelist, p_tname, p_status, p_day;
    exit when vcursor%notfound;
    dbms_output.put_line('기자재명: ' || p_name || ', 사물함 번호: ' || p_seq_locker || ', 교육생 목록 번호: ' || p_seq_traineelist || ', 교육생 이름: ' || p_tname || ', 수료 및 중도퇴사: ' || p_status || ', 수료 및 중도퇴사 날짜: ' || p_day);
    end loop;
close vcursor;
    dbms_output.put_line('조회가 완료되었습니다');
exception
    when others then
    dbms_output.put_line('잘못 입력하셨습니다.');
end procSelectlocker;
/

begin
    procSelectlocker('홍길동');
end;
/

-- B-15. 공지사항 관리
-- 조회
select * from tblNotice;

-- 등록
insert into tblNotice (seq_notice, seq_openCurriculum, title, content) values (1, 1, 'AWS와 Docker를 활용한 Java Full-Stack 과정(A) 공지사항', '"안녕하세요, AWS와 Docker를 활용한 Java Full-Stack 과정(A) 수강생 여러분!
프로젝트 발표일이 7일 남았습니다. 이번 프로젝트에서도 열정적인 참여와 질문을 부탁드리며, 함께 더 나은 개발자가 되도록 노력해봅시다!"');

create or replace procedure procInsertnotice (
    p_seq_notice in tblNotice.seq_notice%type,
    p_seq_openCurriculum in tblNotice.seq_openCurriculum%type,
    p_title in tblNotice.title%type,
    p_content in tblNotice.content%type
)
is
begin
insert into tblNotice (seq_notice, seq_openCurriculum, title, content) values (p_seq_notice, p_seq_openCurriculum, p_title, p_content);
dbms_output.put_line('공지사항 등록이 완료되었습니다.');
end procInsertnotice;
/
begin
    procInsertnotice(2, 2, 'AWS와 Docker를 활용한 Java Full-Stack 과정(A) 공지사항', '"안녕하세요, AWS와 Docker를 활용한 Java Full-Stack 과정(A) 수강생 여러분!
프로젝트 발표일이 7일 남았습니다. 이번 프로젝트에서도 열정적인 참여와 질문을 부탁드리며, 함께 더 나은 개발자가 되도록 노력해봅시다!"');
end;
/

-- 수정
create or replace procedure procUpdatenotice (
    p_seq_notice in number,
    p_seq_openCurriculum in number,
    p_title in varchar2,
    p_content in varchar2
)
is
begin
update tblNotice
set 
seq_openCurriculum = p_seq_openCurriculum,
title = p_title,
content = p_content
where seq_notice = p_seq_notice;
end procUpdatenotice;
/
begin
    procUpdatenotice(7, 7, 'AWS 클라우드와 Elasticsearch를 활용한 Java Full-Stack 과정(B) 공지사항', '수료 축하합니다!');
end;
/

-- 삭제
create or replace procedure procDeletenotice (
    p_seq_notice in tblNotice.seq_notice%type
)
is
begin
    delete from tblNotice
    where seq_notice = p_seq_notice;
    dbms_output.put_line('공지사항이 삭제되었습니다');
    exception
    when others then
    dbms_output.put_line('잘못된 번호입니다.');
end procDeletenotice;
/
begin
    procDeletenotice(1);
end;
/

-- B-16. 취업현황 조회 및 관리
-- 등록
insert into tblEmploymentStatus 
(seq_employmentStatus, seq_traineeList, status, city, company, field, salary)
values (1, 1, '취업', '서울', '금호타이어', '프론트엔드', 36000000);

create or replace procedure procInsertemploymentStatus (
    p_seq_employmentStatus in tblEmploymentStatus.seq_employmentStatus%type,
    p_seq_traineeList in tblEmploymentStatus.seq_traineeList%type,
    p_status in tblEmploymentStatus.status%type,
    p_city in tblEmploymentStatus.city%type,
    p_company in tblEmploymentStatus.company%type,
    p_field in tblEmploymentStatus.field%type,
    p_salary in tblEmploymentStatus.salary%type
)
is
begin
    insert into tblEmploymentStatus 
    (seq_employmentStatus, seq_traineeList, status, city, company, field, salary)
    values (p_seq_employmentStatus, p_seq_traineeList, p_status, p_city, p_company, p_field, p_salary);
    dbms_output.put_line('등록이 완료되었습니다');
end procInsertemploymentStatus;
/
begin
    procInsertemploymentStatus(1, 1, '취업', '서울', '금호타이어', '프론트엔드', 36000000);
end;
/


-- 수정
update tblEmploymentStatus 
set status = '취업', 
city = '제주', 
company = '배달의 민족', 
field = '프론트엔드', 
salary = 50000000 
where seq_employmentStatus = 2;

create or replace procedure procUpdateemploymentStatus (
    p_seq_employmentStatus in number,
    p_status in varchar2,
    p_city in varchar2,
    p_company in varchar2,
    p_field in varchar2,
    p_salary in number
)
is
begin
    update tblEmploymentStatus
    set
    status = p_status,
    city = p_city,
    company = p_company,
    field = p_field,
    salary = p_salary
    where seq_employmentStatus = p_seq_employmentStatus;
    
    dbms_output.put_line('수정이 완료되었습니다.');
    
    exception
    when others then
    dbms_output.put_line('수정에 실패했습니다.');
end procUpdateemploymentStatus;
/
begin
    procUpdateemploymentStatus(2, '취업', '제주', '배달의 민족', '프론트엔드', 50000000);
end;
/
-- 조회
create or replace procedure procSelectemploymentStatus (
    p_status in varchar2
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
                            where es.status = p_status
                                order by es.seq_employmentStatus;
begin
open vcursor;
loop
fetch vcursor into p_seq_employmentStatus, p_seq_traineeList, p_seq_openCurriculum, p_name, p_estatus, p_city, p_field, p_salary;
exit when vcursor%notfound;
dbms_output.put_line('-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
dbms_output.put_line('번호: ' || p_seq_employmentStatus || '| 교육생 목록 번호: ' || p_seq_traineeList || '| 교육 과정: ' || p_seq_openCurriculum || '| 취업 여부: ' || p_estatus || '| 지역: ' || p_city || '| 분야: ' || p_field || '| 연봉: ' || p_salary);
dbms_output.put_line('-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
end loop;
close vcursor;   
end procSelectemploymentStatus;
/
begin
    procSelectemploymentStatus('취업');
end;
/

-- 삭제
delete from tblEmploymentStatus where seq_employmentStatus = 1;

create or replace procedure procDeleteemploymentStatus (
    p_seq_employmentStatus in tblEmploymentStatus.seq_employmentStatus%type
)
is
begin
    delete from tblEmploymentStatus
    where seq_employmentStatus = p_seq_employmentStatus;
    dbms_output.put_line('삭제가 완료되었습니다');
    
    exception
    when others then
    dbms_output.put_line('잘못된 번호입니다.');
end procDeleteemploymentStatus;
/
begin
    procDeleteemploymentStatus(1);
end;
/
-- D-1 

-- 성적조회
    /
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

-- D-2
-- 출결 관리 및 조회 

--출석 기록
/
CREATE OR REPLACE PROCEDURE procAttendanceInfo IS
    CURSOR c_attendance IS
        SELECT t.name, ad.situation, a.day, COUNT(
            CASE 
                WHEN TO_DATE(SUBSTR(a.intime,1,8),'YYYY-MM-DD') = TO_DATE(SUBSTR(a.outtime,1,8),'YYYY-MM-DD') THEN 1
            END) as attendance_count
        FROM tblAttendance a
        INNER JOIN tblTraineelist tl ON tl.seq_traineelist = a.seq_traineelist
        INNER JOIN tbltrainees t ON t.seq_trainee = tl.seq_trainee
        INNER JOIN tblAttendancestatus ad ON ad.seq_attendancestatus = a.seq_attendancestatus
        GROUP BY t.name, ad.situation, a.day;
        
    v_attendance c_attendance%ROWTYPE;
BEGIN
    OPEN c_attendance;
    LOOP
        FETCH c_attendance INTO v_attendance;
        EXIT WHEN c_attendance%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE('이름: ' || v_attendance.name || ', 상황: ' || v_attendance.situation || ', 날짜: ' || v_attendance.day || ', 출석 횟수: ' || v_attendance.attendance_count);
    END LOOP;
    CLOSE c_attendance;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('출석 정보를 찾을 수 없습니다.');
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END procAttendanceInfo;
/
BEGIN
    procAttendanceInfo;
END;
/


-- 년 월 일로 보는 방법 (ANSI , %가 안됨 ; )



--D-3
--교사 평가 (수료 학생만 가능) 

/
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

--D-4 
--교사 추천 도서 조회 
CREATE OR REPLACE PROCEDURE procTextbookInfo(p_teacher_name IN VARCHAR2) IS
    CURSOR c_textbook IS
        SELECT ta.name, rt.grade, tb.name AS textbook_name
        FROM tblRecommendTextbook rt
        INNER JOIN tbltextbook tb ON rt.seq_textbook = tb.seq_textbook
        INNER JOIN tblteacher ta ON ta.seq_teacher = rt.seq_teacher
        WHERE ta.name = p_teacher_name;

    v_textbook c_textbook%ROWTYPE;
BEGIN
    OPEN c_textbook;
    LOOP
        FETCH c_textbook INTO v_textbook;
        EXIT WHEN c_textbook%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE('이름: ' || v_textbook.name || ', 등급: ' || v_textbook.grade || ', 교과서 이름: ' || v_textbook.textbook_name);
    END LOOP;
    CLOSE c_textbook;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('교과서 정보를 찾을 수 없습니다.');
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END procTextbookInfo;

/
BEGIN
    procTextbookInfo('김민곤');
END;
/
   
    
    
    


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
    procTestQuestionIn(1, 1, 1, 1, '자바 소스 확장자는?', '3', '필기');
end;
/

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


-- 4. 과목 목록 출력 시 과목번호, 과정명, 과정기간(시작 년월일, 끝 년월일), 강의실, 과목명, 과목기간(시작 년월일, 끝 년월일), 교재명, 출결, 필기, 실기 배점 등이 출력되고, 
-- 특정 과목을 과목번호로 선택 시 출결 배점, 필기 배점, 실기 배점, 시험 날짜, 시험 문제를 입력할 수 있는 화면으로 연결되어야 한다. (자바에서 구현해야할 듯)
-- 5. 배점 등록이 안 된 과목인 경우는 과목 정보가 출력될 때 배점 부분은 null 값으로 출력한다.
-- 4.1. 특정 교사가 개설 과목 목록 번호로 선택하면 정보 출력
begin
    procSubjectListOut(1, 1);
end;
/

create or replace procedure procSubjectListOut (
    pSeq_teacher in number,
    pSeq_openSubjectList in number
) 
is
 cursor vcursor is
        select 
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
                            and vc.seq_openSubjectList = pSeq_openSubjectList
                            and vc.osl_enddate < sysdate;
                            
    vrecord vcursor%rowtype;
    
begin
    -- 정보 출력
     open vcursor;
    loop
        fetch vcursor into vrecord;
        exit when vcursor%notfound;
        dbms_output.put_line('-----------------------------------------------------------------------------------');
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



--c-3 성적 입출력
-- 3.1. 성적 입력
-- 3.1.1. 교사는 자신이 강의를 마친 과목의 목록 중에서 특정 과목을 선택한다. > 교육생 정보가 출력
begin
    procTraineeInfoOut (1, 1);
end;
/

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

-- 3.1.2. 특정 교육생 선택 > 3.1.3. 해당 교육생의 시험 점수를 입력
begin
    procTestGradesIn(1, 1, 1, 1, 1, 32, 31, 17);
end;
/

create or replace procedure procTestGradesIn(
    pSeq_teacher in number,
    pSeq_openSubjectList in number,
    pSeq_testInfo in number,
    pSeq_grades in number,
    pSeq_traineeList in number,
    pWrittenGrade in number,
    pPracticalGrade in number,
    pAttendanceGrade in number
) 
is
    vEnddate date;
begin
    -- tblopensubjectlist 테이블의 enddate 확인
    select distinct osl.enddate into vEnddate
    from tblOpenSubjectList osl
        inner join tblTestInfo ti
            on ti.seq_openSubjectList = osl.seq_openSubjectList
                inner join tblTraineeList tl
                    on tl.seq_openCurriculum = osl.seq_openCurriculum
                        inner join tblGrades g
                            on g.seq_traineeList = tl.seq_traineeList
                                where osl.seq_teacher = pSeq_teacher
                                and ti.seq_OpenSubjectList = pSeq_openSubjectList
                                and tl.seq_traineeList = pSeq_traineeList;

    -- enddate가 오늘 이전인 경우에만 성적 입력
    if vEnddate < sysdate then
        insert into tblGrades(SEQ_GRADES, SEQ_TRAINEELIST, SEQ_testInfo, WRITTENGRADE, PRACTICALGRADE, ATTENDANCEGRADE)
        values (pSeq_grades, pSeq_traineeList, pSeq_testInfo, pWrittenGrade, pPracticalGrade, pAttendanceGrade);

        if sql%rowcount = 0 then
            dbms_output.put_line('성적 등록에 실패했습니다.');
        else
            dbms_output.put_line('성적이 성공적으로 등록되었습니다.');
        end if;
    else
        dbms_output.put_line('시험이 종료되지 않았습니다.');
    end if;
end procTestGradesIn;
/

-- 3.2. 성적 출력
-- 3.2.1. 과목 목록 출력시 과목번호, 과정명, 과정기간(시작 년월일, 끝 년월일), 강의실, 과목명, 과목기간(시작 년월일, 끝 년월일), 교재명, 출결, 필기, 실기 배점, 성적 등록 여부 등이 출력된다.
-- 업무 SQL에서 구현


-- 3.2.2. 특정 과목을 과목번호로 선택하면 교육생 정보(이름, 전화번호, 수료 또는 중도탈락) 및 성적이 출결, 필기, 실기 점수로 구분되어서 출력되어야 한다.
-- 3.2.3. 성적 등록 여부는 교육생 전체에 대해서 성적을 등록했는지의 여부를 출력한다.
-- 과정을 중도 탈락해서 성적 처리가 제외된 교육생이더라도 교육생 명단에는 출력되어야 한다. 중도 탈락 여부를 확인할 수 있도록 해야 한다.
-- 중도 탈락인 경우 중도탈락 날짜가 출력되도록 한다.

begin
    procTestGradesOut (1, 1);
end;
/

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



--c-4 
-- 4.1. 기간별로, 출결 상황을 구분하여 조회한다.
-- 출결 현황을 기간별(전체, 월, 일) 조회할 수 있어야 한다.
-- 모든 출결 조회는 근태 상황을 구분할 수 있어야 한다.(정상, 지각, 조퇴, 외출, 병가, 기타)
-- 교사가 강의한 과정에 한해 선택하는 경우 모든 교육생의 출결을 조회할 수 있어야 한다.

begin
    procTraineeAttendanceOut (1, 1, to_date('2023-09-04', 'YYYY-MM-DD'), to_date('2023-10-04', 'YYYY-MM-DD'));
end;
/

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

-- 4.1.2. 특정(특정 과정, 특정 인원) 출결 현황을 조회할 수 있어야 한다.
-- 특정 과정
begin
    procSpecificCurriculumAttendanceOut (1, 1, 7);
end;
/

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

-- 특정 인원
begin
    procSpecificTraineeAttendanceOut (1, 1, 1);
end;
/

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





--c-6 추천 도서 관리
-- 1. 교재 추가
-- 새로운 교재 정보를 추가한다.

-- 2. 교재 추천
-- 교재를 추천할 수 있다.





--c-7 후기 관리
-- 1. 후기 관리
-- 프로젝트 종료 이후 교육생이 작성한 후기를 조회 및 관리 할 수 있다.
begin
    procCurriculumEvaluationOut (1, 7);
end;
/

create or replace procedure procCurriculumEvaluationOut (
    pSeq_teacher in number,
    pSeq_openCurriculum in number
) 
is
    cursor vcursor is
        select 
        oc.seq_openCurriculum "교육 과정 번호",
        oc.endDate "과정 종료일",
        ce.grade 평점,
        ce.content 후기
        from tblCurriculumEvaluation ce
            inner join tblOpenCurriculum oc
                on oc.seq_openCurriculum = ce.seq_openCurriculum
                    where oc.seq_openCurriculum = pSeq_openCurriculum
                        and to_date(oc.endDate, 'YYYY-MM-DD') < sysdate; 
    vrecord vcursor%rowtype;
    
begin
    -- 정보 출력
    open vcursor;
    loop
        fetch vcursor into vrecord;
        exit when vcursor%notfound;
        
        -- 정보 출력
        dbms_output.put_line('교육 과정 번호: ' || vrecord."교육 과정 번호");
        dbms_output.put_line('과정 종료일: ' || vrecord."과정 종료일");
        dbms_output.put_line('평점: ' || vrecord.평점);
        dbms_output.put_line('후기: ' || vrecord.후기);
        dbms_output.put_line('-----------------------------------------------------------------------------------');
    end loop;
    
    close vcursor;
exception
    when no_data_found then
        dbms_output.put_line('해당 정보가 없습니다.');
    when others then
        dbms_output.put_line('오류 발생: ' || SQLERRM);
end procCurriculumEvaluationOut;
/
