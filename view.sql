-- 교육 과정
CREATE or replace VIEW vwCurriculum 
as 
select
oc.seq_opencurriculum seq_opencurriculum
,c.seq_curriculum seq_curriculum
,sl.seq_subjectlist seq_subjectlist
,s.seq_subject seq_subject
,r.seq_room seq_room

,oc.seq_curriculum eq_curriculum
,oc.seq_room eq_room
,oc.seq_teacher eq_teacher
,oc.seq_curriculumProgress eq_curriculumProgress
,oc.startDate oc_startDate
,oc.enddate oc_enddate
,c.seq_coursePeriod eq_coursePeriod
,c.name c_name
,c.goal goal
,sl.seq_subject eq_subject
,sl.seq_curriculum q_curriculum --2번 이상 ;; 
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
        
    
