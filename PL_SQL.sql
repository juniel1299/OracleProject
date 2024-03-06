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
