-- 교육 과정
CREATE or replace VIEW vwCurriculum 
as 
select
oc.seq_opencurriculum seq_opencurriculum
,c.seq_curriculum seq_curriculum
,sl.seq_subjectlist seq_subjectlist
,s.seq_subject seq_subject
,osl.seq_textbook seq_textbook
,r.seq_room seq_room
,osl.seq_opensubjectlist seq_opensubjectlist
,osl.seq_teacher seq_teacher
,oc.seq_curriculumProgress seq_curriculumProgress
,oc.startDate oc_startDate
,oc.enddate oc_enddate
,c.seq_coursePeriod seq_coursePeriod
,c.name c_name
,c.goal goal
,s.name s_name
,s.period period
,r.name r_name
,r.capacity capacity
,r.wifiid wifiid
,r.wifipw wifipw
,osl.startdate osl_startdate
,osl.enddate osl_enddate
from tblOpenCurriculum oc
    inner join tblCurriculum c
        on oc.seq_Curriculum = c.seq_curriculum
            inner join tblsubjectList sl
                on sl.seq_curriculum = c.seq_curriculum
                    inner join tblsubject s
                        on s.seq_subject = sl.seq_subject
                            inner join tblroom r
                                on r.seq_room = oc.seq_room
                                    inner join tblopensubjectlist osl
                                        on osl.seq_subjectList = sl.seq_subjectList;

-- 교육생
create or replace view vwTrainees
as
    select 
    tl.seq_traineeList seq_traineeList,
    t.seq_trainee seq_trainee,
    a.seq_attendance seq_attendance,
    tas.seq_attendanceStatus seq_attendanceStatus,
    tl.seq_openCurriculum seq_openCurriculum,
    tl.status tl_status,
    tl.day tl_day,
    t.name t_name,
    t.id t_id,
    t.ssn t_ssn,
    t.tel t_tel,
    t.registrationDate registrationDate,
    t.bank bank,
    t.account account,
    a.day a_day,
    a.inTime inTime,
    a.outTime outTime,
    tas.situation situation
    from tblTraineeList tl
        inner join tblTrainees t
            on tl.seq_trainee = t.seq_trainee
                inner join tblAttendance a
                    on tl.seq_traineeList = a.seq_traineeList
                        inner join tblAttendanceStatus tas
                            on a.seq_attendanceStatus = tas.seq_attendanceStatus;

select * from vwTrainees;
-- 성적

create or replace view vwGrades
as
    select 
    g.seq_grades seq_grades,
    g.seq_testInfo seq_testInfo,
    g.seq_traineeList seq_traineeList,
    osl.seq_openCurriculum seq_openCurriculum,
    sl.seq_curriculum seq_curriculum,
    osl.seq_openSubjectList seq_openSubjectList,
    sl.seq_subjectList seq_subjectList,
    s.seq_subject seq_subject,
    osl.seq_textbook seq_textbook,
    osl.seq_teacher seq_teacher,
    g.writtenGrade writtenGrade,
    g.practicalGrade practicalGrade,
    g.attendanceGrade attendanceGrade,
    ti.writtenDate writtenDate,
    ti.practicalDate practicalDate,
    ti.writtenPoints writtenPoints,
    ti.practicalPoints practicalPoints,
    ti.attendancePoints attendancePoints,
    osl.startDate osl_startDate,
    osl.endDate osl_endDate,
    s.name s_name,
    s.period period
    from tblGrades g
        inner join tblTestInfo ti
            on g.seq_testInfo = ti.seq_testInfo
                inner join tblOpenSubjectList osl
                    on osl.seq_openSubjectList = ti.seq_openSubjectList
                        inner join tblSubjectList sl
                            on sl.seq_subjectList = osl.seq_subjectList
                                inner join tblSubject s
                                    on s.seq_subject = sl.seq_subject;

