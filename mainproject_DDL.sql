-- 문제
create table tblQuestion (
    seq_question number primary key,
    question varchar2(4000) not null,
    answer varchar2(1000) not null
);

-- 과정 기간 
create table tblCoursePeriod (
    seq_coursePeriod number primary key,
    period number not null
);

-- 교재
create table tblTextbook (
    seq_textbook number primary key,
    name varchar2(100) not null,
    publisher varchar2(50) not null
);

-- 과목
create table tblSubject (
    seq_subject number primary key,
    name varchar2(50) not null,
    period number not null
);

-- 공휴일
create table tblPublicHoliday (
    seq_publicHoliday number primary key,
    name varchar2(50) not null,
    holiday date not null
);




-- 교육과정
create table tblCurriculum (
    seq_curriculum number primary key,
    seq_coursePeriod references tblCoursePeriod(seq_coursePeriod),
    name varchar2(50) not null,
    goal varchar2(4000) not null
);

-- 개설 교육과정
create table tblOpenCurriculum (
    seq_openCurriculum number primary key,
    seq_curriculum references tblCurriculum(seq_curriculum),
    seq_room references tblRoom(seq_room), 
    seq_teacher references tblTeacher(seq_teacher), 
    seq_curriculumProgress references tblCurriculumProgress(seq_curriculumProgress),
    startDate date not null,
    endDate date 
);

-- 출결인정서류
create table tblAttendancePapers (
    seq_attendancePapers number primary key,
    seq_traineeList references tblTraineeList(seq_traineeList),
    status varchar2(50) not null,
    day date not null,
    document varchar2(50) not null,
    admitAttendance varchar2(50) not null
);

-- 시험지
create table tblExamPaper (
    seq_attendancePapers number primary key,
    seq_question references tblQuestion(seq_question),
    seq_subject references tblSubject(seq_subject),
    kind varchar2(50) not null
);

-- 온라인 강의 목록
create table tblOnlineCourseList (
    seq_onlineCourseList number primary key,
    seq_traineeList references tblTraineeList(seq_traineeList), 
    seq_onlineLecture references tblOnlineLecture(seq_onlineLecture), 
    seq_openCurriculum references tblOpenCurriculum(seq_openCurriculum), 
    status varchar2(50) default '0' not null 
);

select * from tbl