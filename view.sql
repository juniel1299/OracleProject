-- 교육 과정
CREATE or replace VIEW vwCurriculum 
as 
select
oc.seq_opencurriculum seq_opencurriculum
,oc.seq_curriculumProgress seq_curriculumProgress
,c.seq_curriculum seq_curriculum
,sl.seq_subjectlist seq_subjectlist
,s.seq_subject seq_subject
,r.seq_room seq_room
,oc.seq_teacher seq_teacher
,oc.startDate oc_startDate
,oc.enddate oc_enddate
,c.seq_coursePeriod seq_coursePeriod
,c.name c_name
,c.goal goal
,sl.seq_subject seq_subject
,sl.seq_curriculum sl_curriculum --2번 이상 ;; 
,s.name s_name
,s.period period
,r.name r_name
,r.capacity capacity
,r.wifiid wifiid
,r.wifipw wifipw
from tblOpenCurriculum oc
join tblCurriculum c
on oc.seq_Curriculum = c.seq_curriculum
join tblsubjectList sl
on sl.seq_curriculum = c.seq_curriculum
join tblsubject s
on s.seq_subject = sl.seq_subject
join tblroom r
on r.seq_room = oc.seq_room;


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
        join tblTrainees t
        on tl.seq_trainee = t.seq_trainee
            join tblAttendance a
            on tl.seq_traineeList = a.seq_traineeList
                join tblAttendanceStatus tas
                on a.seq_attendanceStatus = tas.seq_attendanceStatus;

-- 성적
create or replace view vwGrades
as
    select 
    g.seq_testInfo seq_testInfo,
    g.seq_traineeList seq_traineeList,
    ti.seq_testinfo eq_testinfo,
    osl.seq_openCurriculum seq_openCurriculum,
    sl.seq_curriculum seq_curriculum,
    osl.seq_openSubjectList seq_openSubjectList,
    sl.seq_subjectList seq_subjectList,
    s.seq_subject seq_subject,
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
        join tblTestInfo ti
            on g.seq_testInfo = ti.seq_testInfo
                join tblOpenSubjectList osl
                    on osl.seq_openSubjectList = ti.seq_openSubjectList
                        join tblSubjectList sl
                            on sl.seq_subjectList = osl.seq_subjectList
                                join tblSubject s
                                    on s.seq_subject = sl.seq_subject;

