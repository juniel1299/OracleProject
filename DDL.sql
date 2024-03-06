--온라인 강의
create table tblOnlineLecture (
    seq_onlineLecture number primary key, 
    title varchar2(1000) not null
);

--강의 진행 여부
create table tblCurriculumProgress (
    seq_curriculumProgress number primary key, 
    status varchar2(50) not null
);

--강의실
create table tblRoom (
    seq_room number primary key, 
    name varchar2(50) not null,
    capacity number not null,
    wifiId varchar2(50),
    wifiPw varchar2(50)
);

--교육생
create table tblTrainees (
    seq_trainee number primary key, 
    name varchar2(50) not null,
    id varchar2(50) not null,
    ssn varchar2(13) not null,
    tel varchar2(30) not null,
    registrationDate date default sysdate not null,
    bank varchar2(50) not null,
    account varchar2(30) not null
);

--교육생 제약사항
alter table tblTrainees
    add constraint tbltrainees_id_uq unique(id);
alter table tblTrainees
    add constraint tbltrainees_ssn_uq unique(ssn);


-- 관리자
create table tblManager (
    seq_manager number primary key,
    name varchar2(50) not null,
    id varchar2(50) not null,
    pw varchar2(50) not null
);

-- 교사
create table tblTeacher (
    seq_teacher number primary key,
    name varchar2(50) not null,
    id varchar2(50) not null,
    ssn varchar2(13) not null,
    tel varchar2(30) not null
);

--교사 제약사항
alter table tblTeacher
    add constraint tblteacher_id_uq unique(id);
alter table tblTeacher
    add constraint tblteacher_ssn_uq unique(ssn);

-- 출결 상태
create table tblAttendanceStatus (
    seq_attendanceStatus number primary key,
    situation varchar2(50) not null
);

-- 기자재
create table tblEquipment (
    seq_equipment number primary key,
    name varchar2(50) not null,
    importDate date not null,
    expectedExportDate date,
    amount number,
    brokenAmount number
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

-- 문제
create table tblQuestion (
    seq_question number primary key,
    question varchar2(4000) not null,
    answer varchar2(1000) not null
);

-- 공휴일
create table tblPublicHoliday (
    seq_publicHoliday number primary key,
    name varchar2(50) not null,
    holiday date not null
);

--부모 테이블--



-- 시험지
create table tblExamPaper (
    seq_attendancePapers number primary key,
    seq_question references tblQuestion(seq_question),
    seq_openSubjectList references tblOpenSubjectList(seq_openSubjectList),
    kind varchar2(50) not null
);

-- 교육과정
create table tblCurriculum (
    seq_curriculum number primary key,
    seq_coursePeriod references tblCoursePeriod(seq_coursePeriod),
    name varchar2(100) not null,
    goal varchar2(4000) not null
);

--면접 스케줄
create table tblInterviewSchedule(  
    seq_schedule number primary key,
    seq_manager references tblManager(seq_manager),
    seq_trainee references tblTrainees(seq_trainee),
    day date
);

--강의 가능 과목 목록
create table tblAvailableSubjectList(  
    seq_availableSubjectList number primary key,
    seq_subject references tblSubject(seq_subject),
    seq_teacher references tblTeacher(seq_teacher)
);

-- 추천 교재 목록
create table tblRecommendTextbook (
    seq_recommendTextbook number primary key,
    grade number,
    seq_teacher references tblTeacher(seq_teacher),
    seq_textbook references tblTextbook(seq_textbook)
);

-- 첫번째 자식 테이블--



--면접 결과
create table tblInterviewResults(  
    seq_interviewResults number primary key,
    seq_schedule references tblInterviewSchedule(seq_schedule),
    status varchar2(50) not null,
    etc varchar2(4000)
);

-- 개설 교육과정
create table tblOpenCurriculum (
    seq_openCurriculum number primary key,
    seq_curriculum references tblCurriculum(seq_curriculum),
    seq_room references tblRoom(seq_room), 
    seq_curriculumProgress references tblCurriculumProgress(seq_curriculumProgress),
    startDate date not null,
    endDate date 
);

--과목 목록
create table tblSubjectList(                          
    seq_subjectList number primary key,
    seq_subject references tblSubject(seq_subject),
    seq_curriculum references tblCurriculum(seq_curriculum)
);

--개설 과목 목록
create table tblOpenSubjectList(
    seq_openSubjectList number primary key,
    seq_subjectList references tblSubjectList(seq_subjectList),
    seq_openCurriculum references tblopenCurriculum(seq_openCurriculum),
    seq_textbook references tbltextbook(seq_textbook),
    seq_teacher references tblTeacher(seq_teacher), 
    startDate date,
    endDate date
);


-- 두번째 자식 테이블--

--시험 정보
create table tblTestInfo(
    seq_testInfo number primary key,
    seq_openSubjectList references tblOpenSubjectList(seq_openSubjectList),
    writtenDate date,
    practicalDate date,
    writtenPoints number,
    practicalPoints number,
    attendancePoints number
);

--교육생 목록
create table tblTraineeList(                          
    seq_traineeList number primary key,
    seq_trainee references tblTrainees(seq_trainee),
    seq_openCurriculum references tblOpenCurriculum(seq_openCurriculum),
    status varchar2(50),
    day date
);

--공지사항
create table tblNotice (
    seq_notice number primary key,
    seq_openCurriculum references tblOpenCurriculum(seq_openCurriculum),
    title varchar2(1000) not null,
    content varchar2(4000) not null
);

--세번째 자식 테이블--




-- 출결인정서류
create table tblAttendancePapers (
    seq_attendancePapers number primary key,
    seq_traineeList references tblTraineeList(seq_traineeList),
    status varchar2(50) not null,
    day date not null,
    document varchar2(50) not null,
    admitAttendance varchar2(50)
);

--출석
create table tblAttendance(  
    seq_attendance number primary key,
    seq_traineeList references tblTraineeList(seq_traineeList),
    seq_attendanceStatus references tblAttendanceStatus(seq_attendanceStatus),
    day date,
    intime date,
    outtime date
);

-- 사물함
create table tblLocker (
    seq_locker number primary key,
    seq_equipment references tblEquipment(seq_equipment),
    seq_traineeList references tblTraineeList(seq_traineeList)
);

--취업 현황
create table tblEmploymentStatus(                          
    seq_employmentStatus number primary key,
    seq_traineeList references tblTraineeList(seq_traineeList),
    status varchar2(50),
    city varchar2(50),
    company varchar2(50),
    field varchar2(50),
    salary number
);

-- 온라인 강의 목록
create table tblOnlineCourseList (
    seq_onlineCourseList number primary key,
    seq_traineeList references tblTraineeList(seq_traineeList), 
    seq_onlineLecture references tblOnlineLecture(seq_onlineLecture), 
    seq_openCurriculum references tblOpenCurriculum(seq_openCurriculum), 
    status varchar2(50) default '0' not null 
);

--교육 과정 평가
create table tblCurriculumEvaluation(  
    seq_curriculumEvaluation number primary key,
    seq_traineeList references tblTraineeList(seq_traineeList),
    seq_openCurriculum references tblOpenCurriculum(seq_openCurriculum),
    grade number not null,
    content varchar2(4000)
);

--성적
create table tblGrades(  
    seq_grades number primary key,
    seq_traineeList references tblTraineeList(seq_traineeList),
    seq_testInfo references tbltestInfo(seq_testInfo),
    writtenGrade number,
    practicalGrade number,
    attendanceGrade number
);

--네번째 자식 테이블--
