-- view
vwTrainees(
tblTraineeList
tblTrainees
tblAttendance
tblAttendanceStatus
)

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
    
 select * from vwTrainees;