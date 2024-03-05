-- 희연
--b-1 

--b-2 

--b-3 

--b-4 

--b-5 


-- 원준
--b-6 

--b-7 

--b-8 

--b-10 

--b-11


-- 원혁
--b-12 
--온라인 강의 수강 여부 
-- 1. 온라인 강의 수강 여부 조회
select * from tblOnlineCourseList;
select * from tblOnlineLecture;
select * from tblTraineeList;
select * from tblTrainees;

select * from tblOnlineLecture ol
    inner join tblOnlineCourseList oc
    on ol.seq_onlineLecture = oc.seq_onlineLecture
    order by ol.seq_onlinelecture;
    
    inner join tblTraineeList tl
    on tl.seq_traineeList = oc.seq_traineeList;
    
    select t.name, ol.title, oc.status from tblTrainees t
    inner join tblTraineeList tl
    on t.seq_trainee = tl.seq_trainee
    inner join tblOnlineCourseList oc
    on tl.seq_traineeList = oc.seq_traineeList
    inner join tblOnlineLecture ol
    on oc.seq_onlineLecture = ol.seq_onlineLecture
    where t.name = '박고제';
    
--b-13 
-- 출결 인정 서류 관리
-- 조회, 교육생이 제출한 출결 인정 서류를 조회한다. (지각, 조퇴, 외출, 병가, 기타)

-- 제출 서류 등록
insert into tblAttendancePapers (seq_attendancePapers, seq_traineeList, status, day, document, admitattendance)
    values (1, 1, 조퇴, '2023-09-13', '코로나 진단 서류', '출석 인정');
    
-- 제출 서류 수정
update tblAttendancePapers
    set document = '국민취업지원제도 상담'
        where seq_attendancePapers = 1;

-- 출결 인정 서류 조회
    select t.name, ap.document, ap.admitattendance, ap.status from tblTrainees t
    inner join tblTraineeList tl
    on t.seq_trainee = tl.seq_trainee
    inner join tblAttendancePapers ap
    on tl.seq_traineeList = ap.seq_traineeList
    where t.name = '모진백';

-- 삭제
delete from tblAttendancePapers where seq_attendancePapers = 1;

--b-14 
-- 기자재 & 사물함 관리
-- 1. 기자재 현황 관리

-- 비어있는 사물함 등록
insert into tblEquipment (seq_equipment, name, importDate, expectedExportDate, amount, brokenAmount) 
    values (1, '사물함', to_date('2016-01-17', 'yyyy-mm-dd'), null,176,0);

-- 기자재 총 갯수 수정
update tblEquipment set amount = 100 where seq_equipment = 1;

-- 기자재 갯수 조회
select * from tblEquipment;

-- 삭제
delete from tblEquipment where seq_equipment = 1;
 
-- 2. 사물함 배정 및 관리

-- 등록

-- 수정

-- 조회

-- 삭제

--b-15 

--b-16


-- 혜정
--c-2 

--c-3 

--c-4 

--c-6 

--c-7


-- 민곤
--d-1 

--d-2 

--c-1 

--c-5