-- 희연
--b-1 
--할거 없음 :)

--b-2 
/* 과정명 관리 */
--1.입력
--과정 기간 번호(seq_coursePeriod) : 1 - 5.5개월, 2 - 6개월, 3 - 7개월
insert into tblCurriculum(seq_curriculum, seq_coursePeriod, name, goal) values 
((select max(seq_curriculum) from tblCurriculum) + 1, 2,'AWS와 Docker를 활용한 Java Full-Stack 과정(A)', 
'Java 언어를 기반으로 AWS와 Docker를 활용하여 Full-Stack 개발자를 양성하고 있습니다.');

--2. 출력
select distinct
	name as 과정명
from tblCurriculum 
    order by name;
	
--3. 수정
update tblCurriculum set name = '(게임콘텐츠제작) 유니티-언리얼 게임프로그래밍 실무과정'
	where seq_curriculum = 1;
 
--4. 삭제
delete from tblCurriculum
	where seq_curriculum = 1;
	
/* 과목명 관리 */
--1.입력
insert into tblSubject(seq_subject, name, period)
	values ((select max(seq_subject) from tblSubject) + 1, '엘라스틱 서치', 30);

--2. 출력
select
	name as 과목명
from tblSubject;
 	
--3. 수정
update tblSubject set name = 'Elastic Search'
	where seq_subject = 17;
 
--4. 삭제
delete from tblSubject
	where seq_subject = 17;

/* 강의실 관리 */
--1.출력
select
	name as 강의실명,
    capacity as 정원,
    wifiid as "wi-fi",
    wifipw as "wi-fi pw"
from tblRoom;
    	
--2. 와이파이 정보 수정
update tblRoom set wifiid = 'SIST_1_5G'
	where seq_room = 1;
update tblRoom set wifipw = 'sist34822'
	where seq_room = 1;    
    
/* 교재명 관리 */
--1.입력
insert into tblTextbook(seq_textbook, name, publisher)
	values((select max(seq_textbook) from tblTextbook) + 1, '모두의 파이썬', '길벗(주)');
    
--2. 출력
select
	name as 제목,
    publisher as 출판사
from tblTextbook;
    	
--3-1. 교재명 수정
update tblTextbook set name = '모두의 파이썬 개정2판'
	where seq_textbook = 24;
	
--3-2. 교재 출판사명 수정
update tblTextbook set publisher = '한빛미디어'
	where seq_textbook = 24;
 
--4. 삭제
delete from tblTextbook
	where seq_textbook = 17; 
    
    
--b-3 
/* 교사 정보 관리 */
--1.1 교사 기초 정보입력
insert into tblTeacher(seq_teacher, name, id, ssn, tel)
	values ((select max(seq_teacher) from tblTeacher) + 1, '김둘리', 'hoit15', '1089465', '01064898000');
    
--1.2 교사별 강의 가능 과목 입력
--seq_subject : 과목번호, seq_teacher : 교사 번호
insert into tblAvailableSubjectList (seq_availableSubjectList, seq_subject, seq_teacher)
	values ((select max(seq_availableSubjectList) from tblAvailableSubjectList) + 1, 1, 1);

--2.1 교사 전체 명단 출력
select
	t.name as 교사명,
    t.ssn as "주민번호 뒷자리",
    t.tel as 전화번호,
    s.name as "강의 가능 과목"
from tblTeacher t
    inner join tblAvailableSubjectList a
        on t.seq_teacher = a.seq_teacher
            inner join tblsubject s
                on a.seq_subject = s.seq_subject;
                
--2.2 특정 교사 정보 출력
select
	--과목별 기간은 자바로 구현할 예정
    s.name as "배정된 개설 과목명",
    c.name as 과정명,
    o.startdate as 과정시작일,
    o.enddate as 과정종료일,
    b.name as 교재명,
    r.name as 강의실,
    g.status as 강의진행여부
from tblTeacher t
    inner join tblOpenCurriculum o
        on t.seq_teacher = o.seq_teacher
            inner join tblcurriculum c
                on c.seq_curriculum = o.seq_curriculum
                    inner join tblSubjectList sl
                        on c.seq_curriculum = sl.seq_curriculum
                            inner join tblSubject s
                                on s.seq_subject = sl.seq_subject
                                    inner join tblTextbookList bl
                                        on s.seq_subject = bl.seq_subject
                                            inner join tblTextbook b
                                                on b.seq_textbook = bl.seq_textbook
                                                    inner join tblRoom r
                                                        on o.seq_room = r.seq_room
                                                            inner join tblcurriculumprogress g
                                                                on o.seq_curriculumprogress = g.seq_curriculumprogress
                                                                    where t.seq_teacher = 1;                

--2.3 강의 과목별로 가능한 교사 정보 출력
select
	t.name as 교사명,
    s.name as "강의 가능 과목"
from tblTeacher t
    inner join tblAvailableSubjectList a
        on t.seq_teacher = a.seq_teacher
            inner join tblsubject s
                on a.seq_subject = s.seq_subject
                    where s.name = '컴퓨터 이론';

--3. 수정
update tblTeacher set tel = '01055554444'
	where seq_teacher = 1;
 
--4. 삭제
delete from tblTeacher
	where seq_teacher = 1;
    
--b-4 
/* 개설 과정 관리 */
--1.입력
insert into tblOpenCurriculum
(seq_openCurriculum, seq_curriculum, seq_room, seq_teacher, seq_curriculumProgress, startDate, endDate)
values ((select max(seq_openCurriculum) from tblOpenCurriculum) + 1, 1, 1, 1, 2, to_date('2024-02-29' ,'yyyy-mm-dd'), to_date('2024-08-26','yyyy-mm-dd'));
    
--2. 출력
select
    c.name as 과정명,
    o.startdate as 과정시작일,
    o.enddate as 과정종료일,
    r.name as 강의실
from tblOpenCurriculum o
    inner join tblcurriculum c
        on c.seq_curriculum = o.seq_curriculum
            inner join tblRoom r
                on o.seq_room = r.seq_room
                    order by 과정시작일;
    	
--3. 수정
update tblOpenCurriculum set startdate = to_date('2024-02-29' ,'yyyy-mm-dd')
	where seq_openCurriculum = 1;
 
--4. 삭제
delete from tblOpenCurriculum
	where seq_openCurriculum = 1; 
    
--b-5 
/* 과목 관리 */
--1.입력
insert into tblSubject(seq_subject, name, period)
values ((select max(seq_subject) from tblSubject) + 1, '자바', 30);
    
--2. 출력
select
    name 과목명,
    period 과목기간
from tblSubject;
    	
--3. 수정
update tblSubject set period = 15
	where seq_subject = 1;
 
--4. 삭제
delete from tblSubject
	where seq_subject = 1; 


/* 개설 과목 관리 */
--1.입력
INSERT INTO tblOpenSubjectList
VALUES (1, 47, 7, TO_DATE('2023-09-04', 'YYYY-MM-DD'), TO_DATE('2023-10-02', 'YYYY-MM-DD'));
    
--2. 출력
select
    c.name as 과정명,
    oc.startdate as 과정시작일,
    oc.enddate as 과정종료일,
    s.name 과목명,
    os.startdate as 과목시작일,
    os.enddate as 과목종료일,
    b.name 교재명,
    t.name 교사명
from tblopencurriculum oc
    left outer join tblOpenSubjectList os
        on oc.seq_opencurriculum = os.seq_opencurriculum
            inner join tblcurriculum c
                on oc.seq_curriculum = c.seq_curriculum
                    inner join tblSubjectList sl
                     on sl.seq_subjectList = os.seq_subjectList
                        inner join tblSubject s
                            on s.seq_subject = sl.seq_subject
                                inner join tblTextbookList bl
                                        on s.seq_subject = bl.seq_subject
                                            inner join tblTextbook b
                                                on b.seq_textbook = bl.seq_textbook
                                                    
    inner join tblTeacher t
        on t.seq_teacher = oc.seq_teacher
                                order by 과정명;
                    
select * from tblOpenSubjectList;    	
--3. 수정
update tblOpenCurriculum set startdate = to_date('2024-02-29' ,'yyyy-mm-dd')
	where seq_openCurriculum = 1;
 
--4. 삭제
delete from tblOpenCurriculum
	where seq_openCurriculum = 1; 

-- 원준

-- B-6

-- 교육생 등록
insert into tbltrainees
values(
1,'이채린','linear99','2049178','01012345678',sysdate,'우리은행','012-592-384171');

--교육생 출력

select t.name,t.ssn,t.tel,t.registrationdate,count(case
       when tl.status = '수료' then 1 
        end )as "수강횟수"
        from tbltraineelist tl
inner join tbltrainees t
on tl.seq_trainee = t.seq_trainee
group by t.name,t.ssn,t.tel,t.registrationdate;



-- 교육생 검색

select c.name,oc.startdate,oc.enddate,r.name,tl.status,tl.day from tbltrainees t
inner join tbltraineelist tl
on t.seq_trainee = tl.seq_trainee
inner join tblopencurriculum oc
on tl.seq_opencurriculum = oc.seq_curriculum
inner join tblcurriculum c
on oc.seq_curriculum = c.seq_curriculum
inner join tblRoom r
on oc.seq_room = r.seq_room
where t.name = '전염유';

--b-7  ( 테이블 수정 중이라 못 넣음)
-- 과목별
select vc.c_name,vt.t_name,vc.s_name,vc.period,vc.r_name,vt.t_ssn,vg.writtengrade,vg.practicalgrade from vwcurriculum vc
inner join vwtrainees vt
    on vt.seq_opencurriculum = vc.seq_opencurriculum
        inner join vwgrades vg
            on vg.seq_traineelist = vt.seq_traineelist
    group by vc.c_name,vt.t_name,vc.s_name,vc.period,vc.r_name,vt.t_ssn,vg.writtengrade,vg.practicalgrade;
    /
    select * from tblsubject;
    
    select * from tblsubject;
    --특정 개설 과정 (티처 있음;;)
    select vt.t_name,vc.c_name,vc.s_name,t.name,vg.writtengrade,vg.practicalgrade 
from vwgrades vg
inner join vwtrainees vt
on vt.seq_traineelist = vg.seq_traineelist
inner join vwcurriculum vc
on vc.seq_subject = vg.seq_subject
inner join tblteacher t
on t.seq_teacher = vc.seq_teacher
    where vc.c_name = 'AWS와 Docker를 활용한 Java Full-Stack 과정(B)'
    group by vt.t_name,vc.c_name,vc.s_name,t.name,vg.writtengrade,vg.practicalgrade;

select * from vwcurriculum;
commit;
select * from tblgrades;

  --교육생 개인 별
    select vt.t_name,vt.t_ssn,vc.c_name,vc.oc_startdate,vc.oc_enddate,vc.r_name,vc.s_name,vc.period,vg.writtengrade,vg.practicalgrade 
from vwgrades vg
inner join vwtrainees vt
on vt.seq_traineelist = vg.seq_traineelist
inner join vwcurriculum vc
on vc.seq_subject = vg.seq_subject
    where vt.t_name = '천유서'
    group by vt.t_name,vt.t_ssn,vc.c_name,vc.oc_startdate,vc.oc_enddate,vc.r_name,vc.c_name,vc.period,vc.s_name,vg.writtengrade,vg.practicalgrade;
select * from tbltrainees;
/


    -- B-8


--출결 관리
--1. 개설 과정 별 
select t.name,a.day,c.name,ad.situation from tblAttendance a
inner join tblTraineeList tl
on a.seq_traineeList = tl.seq_traineelist
inner join tblopencurriculum oc
on oc.seq_opencurriculum = tl.seq_opencurriculum
inner join tblCurriculum c
on c.seq_curriculum = oc.seq_opencurriculum
inner join tblattendancestatus ad
on ad.seq_attendancestatus = a.seq_attendancestatus
inner join tblTrainees t
on t.seq_trainee = tl.seq_trainee
where c.name = 'AWS 클라우드와 Elasticsearch를 활용한 Java Full-Stack 과정(B)'
group by t.name,a.day,c.name,ad.situation;


-- 2. 특정 인원 (where 문 ) 
select vt.t_name, vt.a_day, vc.c_name, vt.situation from vwtrainees vt
inner join vwcurriculum vc 
on vt.seq_opencurriculum = vc.seq_opencurriculum 
where vt.t_name = '제류혁'
group by vt.t_name, vt.a_day, vc.c_name, vt.situation;

-- B-9 
--교사 평가 조회 
select * from tblopencurriculum;
select * from tblopensubjectlist;
select * from tblteacher;
select * from tblsubjectlist;
select * from tblsubject;

select t.name,ce.grade,ce.content from tblcurriculumevaluation ce
inner join tblopencurriculum oc
on ce.seq_opencurriculum = oc.seq_opencurriculum
inner join tblopensubjectlist osl
on osl.seq_opencurriculum = oc.seq_opencurriculum
inner join tblteacher t
on t.seq_teacher = osl.seq_teacher
group by  t.name,ce.grade,ce.content;

select * from tblsubject;
-- B-10 

--교육 희망자 면접 기록 
insert into tblinterviewresults
values(
1,1,'합격','자바에 대한 기초 지식이 있음');


--교육 희망자 정보 조회 

select t.name,t.id,t.ssn,t.tel from tbltrainees t
inner join tblinterviewschedule s
on s.seq_trainee = t.seq_trainee;

-- 합격자 불합격자 구분
select t.name,r.status from tbltrainees t
inner join tblinterviewschedule s
on s.seq_trainee = t.seq_trainee
inner join tblinterviewresults r
on r.seq_schedule = s.seq_schedule
order by r.status;

-- B.11 

--교재 추가 
insert into tblTextbook
values(
20,'OpenCV-Python으로 배우는 영상처리 및 응용','생능');

--교재 수정

update tblTextbook set publisher  = '에이콘' where name = 'OpenCV-Python으로 배우는 영상처리 및 응용';

--교재 삭제

delete from tblTextbook where name ='OpenCV-Python으로 배우는 영상처리 및 응용';



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
--c-2 배점 입출력

-- 강의를 마친 과목에 대한 성적 처리이기 때문에 pl/sql 사용해야할 듯
-- 1. 교사가 강의를 마친 과목에 대한 성적 처리를 위해서 배점 입출력을 할 수 있어야 한다.
-- 1.1. 배점 입력
INSERT INTO tblTestInfo
VALUES (1, 1, TO_DATE('2023-10-03', 'YYYY-MM-DD'), TO_DATE('2023-10-04', 'YYYY-MM-DD'), 40, 40, 20);

-- 1.2. 배점 출력
select 
seq_openSubjectList "과목 목록 번호",
writtenPoints "필기 배점",
practicalPoints "실기 배점",
attendancePoints "출결 배점"
from tblTestInfo;


-- 특정 과목이기 때문에 pl/sql 필요
--2. 교사는 자신이 강의를 마친 과목의 목록 중에서 특정 과목을 선택하고 해당 과목의 배점 정보를 출결, 필기, 실기로 구분해서 등록할 수 있어야 한다. 시험 날짜, 시험 문제를 추가할 수 있어야 한다.
-- 2.1. 특정 과목 선택
insert into tblTestInfo(seq_testInfo, seq_openSubjectList) 
values (1, 1);

-- 2.2. 필기 배점 등록
update tblTestInfo 
set writtenPoints = 40
where seq_openSubjectList = 1;

-- 2.3.실기 배점 등록
update tblTestInfo
set practicalPoints = 40
where seq_openSubjectList = 1;

-- 2.4. 출결 배점 등록
update tblTestInfo
set attendancegrade = 20
where seq_openSubjectList = 1;

-- 2.5. 시험 날짜 추가
INSERT INTO tblTestInfo
VALUES (1, 1, TO_DATE('2023-10-03', 'YYYY-MM-DD'), TO_DATE('2023-10-04', 'YYYY-MM-DD'));


-- 2.6. 시험 문제 추가
insert into tblQuestion
values(1,'자바 소스 확장자는?','3');

-- 과목과 연결
insert into tblExampaper(seq_attendancepapers, seq_question, seq_subject, kind) 
values (1, 1, 1, '필기');


--3. 출결, 필기, 실기의 배점 비중은 담당 교사가 과목별로 결정한다. 단, 출결은 최소 20점 이상이어야 하고, 출결, 필기, 실기의 합은 100점이 되도록 한다.
INSERT INTO tblTestInfo
VALUES (1, 1, TO_DATE('2023-10-03', 'YYYY-MM-DD'), TO_DATE('2023-10-04', 'YYYY-MM-DD'), 40, 40, 20);


--4. 과목 목록 출력 시 과목번호, 과정명, 과정기간(시작 년월일, 끝 년월일), 강의실, 과목명, 과목기간(시작 년월일, 끝 년월일), 교재명, 출결, 필기, 실기 배점 등이 출력되고, 
-- 특정 과목을 과목번호로 선택 시 출결 배점, 필기 배점, 실기 배점, 시험 날짜, 시험 문제를 입력할 수 있는 화면으로 연결되어야 한다.
-- pl/sql로 구현해야한다.

-- 4.1. 과목 목록 출력
select 
vc.seq_subject "과목 번호",
vc.c_name "과정명",
vc.oc_startDate "과정 시작일",
vc.oc_enddate "과정 종료일",
vc.r_name 강의실,
vc.s_name 과목명,
vc.osl_startdate "과목 시작일",
vc.osl_enddate "과목 종료일",
b.name 교재명,
ti.attendancePoints "출결 배점",
ti.writtenPoints "필기 배점",
ti.practicalPoints "실기 배점"
from vwCurriculum vc
    inner join tblTextbook b
        on b.seq_textbook = vc.seq_textbook
            inner join tblTestInfo ti
                on ti.seq_openSubjectList = vc.seq_openSubjectList
                    where seq_subject = 1; -- 특정 과목

                            
-- 4.2. 입력 화면
INSERT INTO tblTestInfo
VALUES (1, 1, TO_DATE('2023-10-03', 'YYYY-MM-DD'), TO_DATE('2023-10-04', 'YYYY-MM-DD'), 40, 40, 20);

-- 시험 문제 입력
insert into tblQuestion
values(
1,'자바 소스 확장자는?','3');

-- 시험지 연결
INSERT INTO Tblexampaper(seq_attendancepapers, seq_question, seq_subject, kind) VALUES (1, 1, 1, '필기');


--5. 배점 등록이 안 된 과목인 경우는 과목 정보가 출력될 때 배점 부분은 null 값으로 출력한다.
select 
s.name 과목명,
sl.seq_curriculum "과정 번호",
ti.writtenPoints "필기 배점",
ti.practicalPoints "실기 배점",
ti.attendancePoints "출결 배점"
from tblTestInfo ti
    right outer join tblOpenSubjectList osl
        on ti.seq_openSubjectList = osl.seq_openSubjectList
            inner join tblSubjectList sl
                on sl.seq_subjectList = osl.seq_subjectList
                    inner join tblSubject s
                        on s.seq_subject = sl.seq_subject;
                

--c-3 성적 입출력
-- 1. 교사가 강의를 마친 과목에 대한 성적 처리를 위해서 성적 입출력을 할 수 있어야 한다.
-- 강의를 마친 과목에 대한 내용은 자바에서 다룬다.
-- 1.1. 성적 입력
INSERT INTO tblGrades(SEQ_GRADES, SEQ_TRAINEELIST, SEQ_testInfo, WRITTENGRADE, PRACTICALGRADE, ATTENDANCEGRADE)
VALUES (1, 1,1, 32, 31, 17);

-- 1.2. 성적 출력
select 
vg.seq_openCurriculum "교육 과정 번호",
vg.s_name 과목명,
vg.osl_endDate "과목 종료일",
vg.SEQ_GRADES "성적 번호",
vg.SEQ_TRAINEELIST "교육생 목록 번호",
vg.SEQ_testInfo "시험 정보 번호",
vg.ATTENDANCEGRADE "출결 점수",
vg.WRITTENGRADE "필기 점수",
vg.PRACTICALGRADE "실기 점수"
from vwGrades vg
    inner join tblOpenCurriculum oc
        on vg.seq_openCurriculum = oc.seq_openCurriculum
            where to_char(vg.osl_endDate, 'yyyy-mm-dd') < to_char(sysdate, 'yyyy-mm-dd'); -- 현재보다 과목 종료일이 과거인 경우


-- 2. 교사는 자신이 강의를 마친 과목의 목록 중에서 특정 과목을 선택하면, 교육생 정보가 출력되고, 특정 교육생 정보를 선택하면, 해당 교육생의 시험 점수를 입력할 수 있어야 한다. 이때, 출결, 필기, 실기 점수를 구분해서 입력할 수 있어야 한다.
-- 2.1. 특정 과목 선택
select 
distinct sl.seq_subject "과목 번호",
vt.seq_trainee "학생 번호",
vt.t_name "이름",
vt.t_id "아이디",
vt.t_tel "전화번호"
from  vwTrainees vt
    inner join tblOpenSubjectList osl
        on osl.seq_openCurriculum = vt.seq_openCurriculum
            inner join tblSubjectList sl
                on sl.seq_subjectList = osl.seq_subjectList
                    where sl.seq_subject = 1; -- 특정과목
                    
-- 2.2. 특정 교육생 선택
select 
distinct sl.seq_subject "과목 번호",
vt.seq_trainee "학생 번호",
vt.t_name "이름",
vt.t_id "아이디",
vt.t_tel "전화번호"
from  vwTrainees vt
    inner join tblOpenSubjectList osl
        on osl.seq_openCurriculum = vt.seq_openCurriculum
            inner join tblSubjectList sl
                on sl.seq_subjectList = osl.seq_subjectList
                    where sl.seq_subject = 1 -- 특정과목
                    and vt.seq_trainee = 71; -- 특정 교육생

-- 3. 과목 목록 출력시 과목번호, 과정명, 과정기간(시작 년월일, 끝 년월일), 강의실, 과목명, 과목기간(시작 년월일, 끝 년월일), 교재명, 출결, 필기, 실기 배점, 성적 등록 여부 등이 출력되고, 
-- 3.1. 과목 목록 출력(성적 등록 여부?)                                            
select 
vc.seq_subject "과목 번호",
vc.c_name "과정명",
vc.oc_startDate "과정 시작일",
vc.oc_enddate "과정 종료일",
vc.r_name 강의실,
vc.s_name 과목명,
vc.osl_startdate "과목 시작일",
vc.osl_enddate "과목 종료일",
b.name 교재명,
ti.attendancePoints "출결 배점",
ti.writtenPoints "필기 배점",
ti.practicalPoints "실기 배점",
g.attendanceGrade "출결 점수",
g.writtenGrade "필기 점수",
g.practicalGrade "실기 점수"
from vwCurriculum vc
    inner join tblTextbook b
        on b.seq_textbook = vc.seq_textbook
            inner join tblTestInfo ti
                on ti.seq_openSubjectList = vc.seq_openSubjectList
                    inner join tblGrades g
                        on g.seq_testInfo = ti.seq_testInfo;


-- 특정 과목을 과목번호로 선택시 교육생 정보(이름, 전화번호, 수료 또는 중도탈락) 및 성적이 출결, 필기, 실기 점수로 구분되어서 출력되어야 한다.
-- 3.2. 특정 과목(자바)
select 
distinct vt.seq_traineeList "교육생 목록 번호",
vt.t_name 이름,
vt.t_tel 전화번호,
vt.tl_status "상태",
vg.attendanceGrade "출결 점수",
vg.writtenGrade "필기 점수",
vg.practicalGrade "실기 점수"
from vwGrades vg
    inner join vwTrainees vt
        on vt.seq_traineeList = vg.seq_traineeList
            where vg.seq_subject = 1; --특정 과목
                                            

-- 4. 성적 등록 여부는 교육생 전체에 대해서 성적을 등록했는지의 여부를 출력한다.
select 
tl.seq_trainee "학생 번호",
g.attendanceGrade "출결 성적",
g.writtenGrade "필기 성적",
g.practicalGrade "실기 성적"
from tblGrades g
    right outer join tblTraineeList tl
        on tl.seq_traineeList = g.seq_traineeList;


-- 5. 과정을 중도 탈락해서 성적 처리가 제외된 교육생이더라도 교육생 명단에는 출력되어야 한다. 중도 탈락 여부를 확인할 수 있도록 해야 한다.
-- 중도 탈락인 경우 중도탈락 날짜가 출력되도록 한다.
-- 중도 탈락 처리된 교육생의 성적인 경우 중도탈락 이후 날짜의 성적은 입력하지 않는다.
select * from tblTraineeList where status = '중도탈락';


--c-4 출결 관리 및 출결 조회
-- 교사가 강의한 과정에 한해 선택하는 경우 모든 교육생의 출결을 조회할 수 있어야 한다.
select 
oc.seq_openCurriculum "개설 교육과정 번호",
asl.seq_subject "과목 번호",
tl.seq_trainee "교육생 번호",
to_char(a.inTime, 'HH24:MI:SS') "출근 시간",
to_char(a.outTime, 'HH24:MI:SS') "퇴근 시간"
from tblOpenCurriculum oc
    inner join tblAvailableSubjectList asl
        on oc.seq_teacher = asl.seq_teacher
                inner join tblTraineeList tl
                    on tl.seq_openCurriculum = oc.seq_openCurriculum
                        inner join tblAttendance a
                            on a.seq_traineeList = tl.seq_traineeList
                                where oc.seq_teacher = 1 -- 특정교사
                                    and asl.seq_subject = 1 -- 특정 과목
                                        order by tl.seq_trainee;
        
        
-- 출결 현황을 기간별(년, 월, 일) 조회할 수 있어야 한다.
select 
oc.seq_openCurriculum "개설 교육과정 번호",
asl.seq_subject "과목 번호",
tl.seq_trainee "교육생 번호",
a.day 날짜,
to_char(a.inTime, 'HH24:MI:SS') "출근 시간",
to_char(a.outTime, 'HH24:MI:SS') "퇴근 시간"
from tblOpenCurriculum oc
    inner join tblOpenSubjectList osl
        on oc.seq_openCurriculum = osl.seq_openCurriculum
            inner join tblAvailableSubjectList asl
                on asl.seq_teacher = osl.seq_teacher
                
                
                    inner join tblTraineeList tl
                        on tl.seq_openCurriculum = oc.seq_openCurriculum
                            inner join tblAttendance a
                                on a.seq_traineeList = tl.seq_traineeList
                                    where a.inTime between to_date('2023-09-04', 'YYYY-MM-DD') and to_date('2023-11-09', 'YYYY-MM-DD') -- 특정 기간
                                        order by tl.seq_trainee;
                                

-- 특정(특정 과정, 특정 인원) 출결 현황을 조회할 수 있어야 한다.


-- 모든 출결 조회는 근태 상황을 구분할 수 있어야 한다.(정상, 지각, 조퇴, 외출, 병가, 기타)



--c-6 추천 도서 관리
--1. 교재 추가
--새로운 교재 정보를 추가한다.


--2. 교재 추천
-- 교재를 추천할 수 있다.



--c-7 후기 관리
-- 1. 후기 관리
-- 프로젝트 종료 이후 교육생이 작성한 후기를 조회 및 관리 할 수 있다.



-- 민곤



--c-1 

--c-5

-- D-1
-- 성적조회

select distinct vt.t_name,vt.t_id,vt.t_ssn,vt.t_tel,vc.s_name,vc.osl_startdate,vc.osl_enddate from vwtrainees vt
inner join vwgrades vg
on vt.seq_opencurriculum = vg.seq_opencurriculum
inner join vwCurriculum vc
on vc.seq_opensubjectlist = vg.seq_opensubjectlist
where vt.t_name ='모백양'
order by vt.t_name,vt.t_id,vt.t_ssn,vt.t_tel,vc.s_name,vc.osl_startdate,vc.osl_enddate;

-- D-2
-- 출결 관리 및 조회 

--출석 기록 
-- (출근 퇴근이 하루에 있으면 카운트) 매일 근태 관리

select t.name,ad.situation,a.day,count(case when to_date(substr(a.intime,1,8),'yyyy-mm-dd') = to_date(substr(a.outtime,1,8),'yyyy-mm-dd') then 1
end) from tblAttendance a
inner join tblTraineelist tl
on tl.seq_traineelist = a.seq_traineelist
inner join tbltrainees t
on t.seq_trainee = tl.seq_trainee
inner join tblAttendancestatus ad
on ad.seq_attendancestatus = a.seq_attendancestatus
group by t.name,a.intime,a.outtime,ad.situation,a.day;


-- 년 월 일로 보는 방법 
select to_char(to_date(substr(a.day,1,8)),'yyyy-mm-dd'),t.name,ad.situation,a.day from tblAttendance a
inner join tblTraineelist tl
on tl.seq_traineelist = a.seq_traineelist
inner join tbltrainees t
on t.seq_trainee = tl.seq_trainee
inner join tblAttendancestatus ad
on ad.seq_attendancestatus = a.seq_attendancestatus
where a.day like '23%' and t.name = '천유서';

--D-3

--D-3

--교사 평가 (수료 학생만 가능) 
insert into tblTeacherEvaluation
values(
1,1,1,5,'설명을 자세하게 해주신다.');


--D-4 
--교사 추천 도서 조회 

-- 조회
select * from tblRecommendTextbook;



--D-6 
--서류 제출(제출만 가능)

-- 서류 제출
insert into tblAttendancePapers
values(
1,1,'조퇴','2023-09-13','코로나 진단 서류','');
