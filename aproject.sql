select * from tblInterviewSchedule;
select * from tblManager;
select * from tblPublicHoliday;
select * from tblOnlineLecture;
select * from tblInterviewResults;
select * from tblTextbookList;
select * from tblSubject;
select * from tblExamPaper;
select * from tblQuestion;
select * from tblEquipment;
select * from tblLocker;
select * from tblGrades;
select * from tblSubjectList;
select * from tblTextbook;
select * from tblCoursePeriod;
select * from tblRecommendTextbook;
select * from tblAvailableSubjectList;
select * from tblCurriculum;
select * from tblAttendance;
select * from tblAttendanceStatus;
select * from tblAttendancePapers;
select* from tblTraineeList;
select * from tblOpenCurriculum;
select * from tblTeacher;
select * from tblNotice;
select * from tblRoom;
select * from tblTrainees;
select * from tblCurriculumProgress;
select * from tblTeacherEvaluation;
select * from tblEmploymentStatus;
select * from tblInterviewSchedule;
select * from tblInterviewResults;
select * from tblManager;
select * from tblOnlineCourseList;
select * from tblOnlineLecture;

commit;
/*
1*
*/
-- 관리자
create table tblManager (
    seq_manager number primary key,
    name varchar2(50) not null,
    id varchar2(50) not null,
    pw varchar2(50) not null
);

-- 기자재
create table tblEquipment (
    seq_equipment number primary key,
    name varchar2(50) not null,
    importDate date not null,
    expectedExportDate date
);

-- 출결 상태
create table tblAttendanceStatus (
    seq_attendanceStatus number primary key,
    situation varchar2(50) not null
);

-- 교사
create table tblTeacher (
    seq_teacher number primary key,
    name varchar2(50) not null,
    id varchar2(50) not null,
    ssn varchar2(13) not null,
    tel varchar2(30) not null
);

alter table tblTeacher
    add constraint tblteacher_id_uq unique(id);
    
alter table tblTeacher
    add constraint tblteacher_ssn_uq unique(ssn);

select * from tblEquipment;
/*
2
*/
-- 교재 목록
create table tblTextbookList (
    seq_textbookList number primary key,
    seq_textbook references tblTextbook(seq_textbook),
    seq_subject references tblSubject(seq_subject)
);

-- 추천 교재 목록
create table tblRecommendTextbook (
    seq_recommendTextbook number primary key,
    grade number,
    seq_teacher references tblTeacher(seq_teacher),
    seq_textbook references tblTextbook(seq_textbook)
);

/*
3
*/
-- 사물함
create table tblLocker (
    seq_locker number primary key,
    seq_traineeList references tblTraineesList(seq_traineeList)
);

-- 제약조건 및 컬럼명 수정
alter table tblLocker
add seq_equipment number;

alter table tblLocker
add constraint fk_seq_equipment foreign key (seq_equipment) references tblEquipment(seq_equipment);

alter table tblLocker rename column seq_trainee to seq_traineeList;

alter table tblLocker
add constraint fk_seq_traineeList foreign key (seq_traineeList) references tblTraineeList(seq_traineeList);


-- 기자재 
insert into tblEquipment (seq_equipment, name, importDate, expectedExportDate) values (1, '사물함', to_date('2016-01-17', 'yyyy-mm-dd'), null);
insert into tblEquipment (seq_equipment, name, importDate, expectedExportDate) values (2, '모니터', to_date('2024-01-25', 'yyyy-mm-dd'), to_date('2027-01-25', 'yyyy-mm-dd'));
insert into tblEquipment (seq_equipment, name, importDate, expectedExportDate) values (3, '본체', to_date('2024-02-14', 'yyyy-mm-dd'), to_date('2027-02-14', 'yyyy-mm-dd'));
insert into tblEquipment (seq_equipment, name, importDate, expectedExportDate) values (4, '키보드', to_date('2024-02-14', 'yyyy-mm-dd'), to_date('2027-02-14', 'yyyy-mm-dd'));
insert into tblEquipment (seq_equipment, name, importDate, expectedExportDate) values (5, '마우스', to_date('2024-02-14', 'yyyy-mm-dd'), to_date('2027-02-14', 'yyyy-mm-dd'));
insert into tblEquipment (seq_equipment, name, importDate, expectedExportDate) values (6, '책상', to_date('2015-08-21', 'yyyy-mm-dd'), null);
insert into tblEquipment (seq_equipment, name, importDate, expectedExportDate) values (7, '의자', to_date('2012-03-13', 'yyyy-mm-dd'), null);
insert into tblEquipment (seq_equipment, name, importDate, expectedExportDate) values (8, '오라클 데이터베이스 책', to_date('2024-01-11', 'yyyy-mm-dd'), null);
insert into tblEquipment (seq_equipment, name, importDate, expectedExportDate) values (9, '빔 프로젝터', to_date('2019-09-10', 'yyyy-mm-dd'), to_date('2024-03-10', 'yyyy-mm-dd'));

-- 사물함
insert into tblLocker (seq_locker, seq_equipment, seq_traineeList) values (1, 1, );

select * from tblTextbook;

-- 추천 교재 목록
select * from tblTextbook;
select * from tblTeacher;
select * from tblRecommendTextbook;

select * from tblSubject;

insert into tblRecommendTextbook (seq_recommendTextbook, seq_teacher, seq_textbook, grade) values (1, 1, 1, 4);
insert into tblRecommendTextbook (seq_recommendTextbook, seq_teacher, seq_textbook, grade) values (2, 1, 2, 4);
insert into tblRecommendTextbook (seq_recommendTextbook, seq_teacher, seq_textbook, grade) values (3, 1, 3, 3);
insert into tblRecommendTextbook (seq_recommendTextbook, seq_teacher, seq_textbook, grade) values (4, 2, 4, 5);
insert into tblRecommendTextbook (seq_recommendTextbook, seq_teacher, seq_textbook, grade) values (5, 2, 5, 5);
insert into tblRecommendTextbook (seq_recommendTextbook, seq_teacher, seq_textbook, grade) values (6, 3, 6, 3);
insert into tblRecommendTextbook (seq_recommendTextbook, seq_teacher, seq_textbook, grade) values (7, 4, 7, 5);
insert into tblRecommendTextbook (seq_recommendTextbook, seq_teacher, seq_textbook, grade) values (8, 5, 8, 5);
insert into tblRecommendTextbook (seq_recommendTextbook, seq_teacher, seq_textbook, grade) values (9, 6, 9, 4);
insert into tblRecommendTextbook (seq_recommendTextbook, seq_teacher, seq_textbook, grade) values (10, 7, 10, 2);
insert into tblRecommendTextbook (seq_recommendTextbook, seq_teacher, seq_textbook, grade) values (11, 8, 11, 2);
insert into tblRecommendTextbook (seq_recommendTextbook, seq_teacher, seq_textbook, grade) values (12, 9, 12, 2);




-- 교육과정 번호
select * from tblcurriculum;

select * from tblCoursePeriod;
-- 강의실 번호
select * from tblRoom;
-- 교사 번호
select * from tblTeacher;
-- 강의 진행 여부 번호
select * from tblCurriculumProgress;

-- 개설 교육과정
select * from tblOpenCurriculum;

insert into tblOpenCurriculum
(seq_openCurriculum, seq_curriculum, seq_room, seq_teacher, seq_curriculumProgress, startDate, endDate)
values
(1, 1, 1, 1, 2, to_date('2024-02-29' ,'yyyy-mm-dd'), to_date('2024-08-26','yyyy-mm-dd'));   -- 진행

insert into tblOpenCurriculum
(seq_openCurriculum, seq_curriculum, seq_room, seq_teacher, seq_curriculumProgress, startDate, endDate)
values
(2, 2, 2, 2, 1, to_date('2024-03-07' ,'yyyy-mm-dd'), to_date('2024-09-02','yyyy-mm-dd'));   -- 예정

insert into tblOpenCurriculum
(seq_openCurriculum, seq_curriculum, seq_room, seq_teacher, seq_curriculumProgress, startDate, endDate)
values
(3, 3, 4, 4, 2, to_date('2023-12-29' ,'yyyy-mm-dd'), to_date('2024-06-10','yyyy-mm-dd'));   -- 진행

insert into tblOpenCurriculum
(seq_openCurriculum, seq_curriculum, seq_room, seq_teacher, seq_curriculumProgress, startDate, endDate)
values
(4, 4, 6, 7, 2, to_date('2023-12-26' ,'yyyy-mm-dd'), to_date('2024-06-22','yyyy-mm-dd'));   -- 진행

insert into tblOpenCurriculum
(seq_openCurriculum, seq_curriculum, seq_room, seq_teacher, seq_curriculumProgress, startDate, endDate)
values
(5, 5, 3, 10, 2, to_date('2024-01-05' ,'yyyy-mm-dd'), to_date('2024-07-02','yyyy-mm-dd'));  -- 진행

insert into tblOpenCurriculum
(seq_openCurriculum, seq_curriculum, seq_room, seq_teacher, seq_curriculumProgress, startDate, endDate)
values
(6, 6, 5, 9, 1, to_date('2024-03-11' ,'yyyy-mm-dd'), to_date('2024-09-06','yyyy-mm-dd'));   -- 예정

insert into tblOpenCurriculum
(seq_openCurriculum, seq_curriculum, seq_room, seq_teacher, seq_curriculumProgress, startDate, endDate)
values
(7, 7, 5, 8, 3, to_date('2023-09-04' ,'yyyy-mm-dd'), to_date('2024-02-15','yyyy-mm-dd'));   -- 종료

insert into tblOpenCurriculum
(seq_openCurriculum, seq_curriculum, seq_room, seq_teacher, seq_curriculumProgress, startDate, endDate)
values
(8, 8, 6, 7, 3, to_date('2023-09-01' ,'yyyy-mm-dd'), to_date('2024-02-27','yyyy-mm-dd'));   -- 종료

