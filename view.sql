-- 교육 과정


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
        
    