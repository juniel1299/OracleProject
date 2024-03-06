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
CREATE OR REPLACE PROCEDURE insert_trainees(
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
END insert_trainees;

/
BEGIN
    insert_trainees(1, '이채린', 'linear99', '2049178', '01012345678', sysdate, '우리은행', '012-592-384171');
END;
/
--수정
/
CREATE OR REPLACE PROCEDURE update_trainees_ssn(
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
END update_trainees_ssn;
/
BEGIN
    update_trainees_ssn('2050692', '이채린');
END;
/
-- 삭제
/
CREATE OR REPLACE PROCEDURE delete_trainees(
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
END delete_trainees;

/
BEGIN
    delete_trainees('이채린');
END;


/



-- 검색
CREATE OR REPLACE PROCEDURE select_trainees_courses IS
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
END select_trainees_courses;


/
BEGIN
    select_trainees_courses;
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
CREATE OR REPLACE PROCEDURE select_grades_course(
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
END select_grades_course;



/
BEGIN
    select_grades_course('AWS와 Docker를 활용한 Java Full-Stack 과정(B)'); 
END;

/

  --교육생 개인 별
CREATE OR REPLACE PROCEDURE select_trainee_info(
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
END select_trainee_info;

/
BEGIN
    select_trainee_info('천유서');
END;


/

-- b-8
--출결관리
--1. 개설 과정 별
CREATE OR REPLACE PROCEDURE select_course_info(
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
END select_course_info;


/
BEGIN
    select_course_info('AWS 클라우드와 Elasticsearch를 활용한 Java Full-Stack 과정(B)');
END;


/

-- 2. 특정 인원

CREATE OR REPLACE PROCEDURE select_trainee_attendance(
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
END select_trainee_attendance;
/

BEGIN
    select_trainee_attendance('제류혁');
END;
/


-- b-9
CREATE OR REPLACE PROCEDURE select_curriculum_evaluation IS
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
END select_curriculum_evaluation;
/
BEGIN
    select_curriculum_evaluation;
END;
/

-- b-10

--교육 희망자 정보 조회 
CREATE OR REPLACE PROCEDURE select_trainee_schedule IS
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
END select_trainee_schedule;
/
BEGIN
    select_trainee_schedule;
END;
/
-- 합격자 불합격자 구분

CREATE OR REPLACE PROCEDURE select_trainee_results IS
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
END select_trainee_results;
/
BEGIN
    select_trainee_results;
END;
/

-- b-11 
--관리자가 교재 정보 추가하는 기능
CREATE OR REPLACE PROCEDURE insert_textbook(
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
END insert_textbook;
/
BEGIN
    insert_textbook(20, 'OpenCV-Python으로 배우는 영상처리 및 응용', '생능');
END;
/

-- 관리자가 교재 정보 수정 
/
CREATE OR REPLACE PROCEDURE update_textbook_publisher(
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
END update_textbook_publisher;
/
BEGIN
    update_textbook_publisher('에이콘', 'OpenCV-Python으로 배우는 영상처리 및 응용');
END;


-- 관리자가 교재 정보 삭제 
/
CREATE OR REPLACE PROCEDURE delete_textbook(
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
END delete_textbook;
/
BEGIN
    delete_textbook('OpenCV-Python으로 배우는 영상처리 및 응용');
END;
/

-- D-1 

-- 성적조회
    /
CREATE OR REPLACE PROCEDURE select_trainee_info(
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
END select_trainee_info;
/

BEGIN
    select_trainee_info('모백양');
END;
/

-- D-2
-- 출결 관리 및 조회 

--출석 기록
/
CREATE OR REPLACE PROCEDURE select_attendance_info IS
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
END select_attendance_info;
/
BEGIN
    select_attendance_info;
END;
/


-- 년 월 일로 보는 방법 (ANSI , %가 안됨 ; )



--D-3
--교사 평가 (수료 학생만 가능) 

/
CREATE OR REPLACE PROCEDURE insert_curriculum_evaluation(
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
END insert_curriculum_evaluation;

/
BEGIN
    insert_curriculum_evaluation(1, 1, 1, 5, '설명을 자세하게 해주신다.');
END;
/

--D-4 
--교사 추천 도서 조회 
CREATE OR REPLACE PROCEDURE select_textbook_info(p_teacher_name IN VARCHAR2) IS
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
END select_textbook_info;

/
BEGIN
    select_textbook_info('김민곤');
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
