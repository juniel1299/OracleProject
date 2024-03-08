-- 희연
-- B-1 

-- B-2. 기초 정보 관리 기능
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
--a. 기초 정보 과목명 조회
select * from tblSubject;
--b. 교사별 강의 가능 과목 추가
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
    s_name as "배정된 개설 과목명",
    osl_startdate as 과목시작일,
    osl_enddate as 과목종료일,
    c_name as 과정명,
    oc_startdate as 과정시작일,
    oc_enddate as 과정종료일,
    b.name as 교재명,
    r_name as 강의실,
    g.status as 강의진행여부
from vwCurriculum v
    inner join tblTextbook b
        on b.seq_textbook = v.seq_textbook
            inner join tblcurriculumprogress g
                on v.seq_curriculumprogress = g.seq_curriculumprogress
                     where seq_teacher = 특정교사번호;

--2.3 강의 과목별로 가능한 교사 정보 출력
select
	t.name as 교사명,
    s.name as "강의 가능 과목"
from tblTeacher t
    inner join tblAvailableSubjectList a
        on t.seq_teacher = a.seq_teacher
            inner join tblsubject s
                on a.seq_subject = s.seq_subject
                    where s.name = 과목이름;

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
    distinct c_name as 과정명,
    oc_startdate as 과정시작일,
    oc_enddate as 과정종료일,
    r_name as 강의실,
    case
        when seq_opensubjectlist is not null then '등록'
        when seq_opensubjectlist is null then '미등록'
    end as "개설 과목 등록 여부",
    count(tl.seq_opencurriculum) as "교육생 등록 인원"
from vwcurriculum v
    left outer join tbltraineelist tl
        on tl.seq_opencurriculum = v.seq_opencurriculum
            group by c_name,oc_startdate, oc_enddate, r_name, seq_opensubjectlist, tl.seq_opencurriculum
                order by 과정시작일 desc;
 	
--3. 수정
update tblOpenCurriculum set startdate = to_date('2024-02-29' ,'yyyy-mm-dd')
	where seq_openCurriculum = 1;
 
--4. 삭제
delete from tblOpenCurriculum
	where seq_openCurriculum = 1; 
    
/* 특정 과목 선택 */
--a. 전체 개설 과정 출력
select
    distinct c_name as 과정명,
    oc_startdate as 과정시작일,
    oc_enddate as 과정종료일,
    r_name as 강의실
from vwcurriculum
    order by 과정시작일 desc;

--b. 관련 과목 정보 출력
select
    distinct s_name as 과목명,
    osl_startdate as 과목시작일,
    osl_enddate as 과목종료일
from vwcurriculum 
    where seq_opencurriculum = 1;
--c. 등록된 교육생 정보    
select
    distinct t.name as 이름,
    t.tel as 전화번호
from vwcurriculum v
    left outer join tbltraineelist tl
        on tl.seq_opencurriculum = v.seq_opencurriculum
            inner join tbltrainees t
                on t.seq_trainee = tl.seq_trainee
                    where v.seq_opencurriculum = 1
                        order by 이름;
        
        
--b-5 
--1.입력(개설 과목 등록
INSERT INTO tblOpenSubjectList
VALUES (1, 47, 7, 1, 1, TO_DATE('2023-09-04', 'YYYY-MM-DD'), TO_DATE('2023-10-02', 'YYYY-MM-DD'));
    
--2. 출력(개설 과목 보기
select
    c_name as 과정명,
    oc_startdate as 과정시작일,
    oc_enddate as 과정종료일,
    r_name as 강의실,
    s_name 과목명,
    osl_startdate as 과목시작일,
    osl_enddate as 과목종료일,
    b.name 교재명,
    t.name 교사명
from vwcurriculum v
    inner join tblTextbook b
        on b.seq_textbook = v.seq_textbook                                  
            inner join tblTeacher t
                on t.seq_teacher = v.seq_teacher
                    order by 과정명;
 	
--3. 수정
update tblOpenSubjectList set seq_teacher = 2
	where seq_OpenSubjectList = 1;
 
--4. 삭제
delete from tblOpenSubjectList
	where seq_OpenSubjectList = 1; 
    
    
-- 원준
-- b-6
-- 교육생 등록
insert into tbltrainees
values(
1,'이채린','linear99','2049178','01012345678',sysdate,'우리은행','012-592-384171');

<<<<<<< HEAD
--교육생 출력
select t.name as 학생명
,t.ssn as 주민번호
,t.tel as 전화번호
,t.registrationdate as 가입일자
,count(case
       when tl.status = '수료' then 1 
        end )as "수강횟수"
            from tbltraineelist tl
                inner join tbltrainees t
                    on tl.seq_trainee = t.seq_trainee
                        group by t.name,t.ssn,t.tel,t.registrationdate;

-- 교육생 검색
<<<<<<< HEAD
=======
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

–- 수정
update tblTrainees set ssn  = '2050692' where name = '이채린';

–- 삭제
delete from tblTrainees where name ='이채린’;

-- 교육생 검색

>>>>>>> c8e900c45de3608dbf393d22c3e71b682b9f5e04
select c.name,oc.startdate,oc.enddate,r.name,tl.status,tl.day from tbltrainees t
inner join tbltraineelist tl
on t.seq_trainee = tl.seq_trainee
inner join tblopencurriculum oc
on tl.seq_opencurriculum = oc.seq_curriculum
inner join tblcurriculum c
on oc.seq_curriculum = c.seq_curriculum
inner join tblRoom r
<<<<<<< HEAD
on oc.seq_room = r.seq_room
where t.name = '전염유';
=======
select
c.name as 학생명
,oc.startdate as 과정시작일
,oc.enddate 과정끝나는날
,r.name as 강의실명
,tl.status as 수료확인
,tl.day as 수료날짜
from tbltrainees t
    inner join tbltraineelist tl
        on t.seq_trainee = tl.seq_trainee
            inner join tblopencurriculum oc
                on tl.seq_opencurriculum = oc.seq_curriculum
                    inner join tblcurriculum c
                        on oc.seq_curriculum = c.seq_curriculum
                            inner join tblRoom r
                                on oc.seq_room = r.seq_room
                                    where t.name = '전염유';
>>>>>>> a9f01b0d592c4bbe7626194005b4e3a5add44bbd

-- 교육생 수정 
UPDATE tblTrainees 
    SET tel = '010-0000-0000'
    WHERE seq_trainee = 1;
    
-- 교육생 삭제
delete from tbltrainees where name ='전염유';


--b-7
-- 과목별
select 
vc.c_name as 과정명
,cp.period as 과정기간
,vc.r_name as 강의실명
,vc.s_name as 과목명
,tea.name as 교사명
,tb.name as 책이름
,vt.t_name as 학생명
,vt.t_ssn as 주민번호
,vg.writtengrade as 필기성적
,vg.practicalgrade as 실기성적
from vwcurriculum vc 
    inner join vwtrainees vt
        on vt.seq_opencurriculum = vc.seq_opencurriculum
            inner join vwgrades vg
                on vg.seq_traineelist = vt.seq_traineelist
                    inner join tblteacher tea 
                        on tea.seq_teacher =  vc.seq_teacher
                            inner join tbltextbook tb
                                on tb.seq_textbook = vc.seq_textbook
                                    INNER join tblcourseperiod cp
                                        on cp.seq_courseperiod = vc.seq_courseperiod
                                            group by vc.c_name,cp.period,vc.r_name,vc.s_name,tea.name,tb.name,vt.t_name,vt.t_ssn,vg.writtengrade,vg.practicalgrade;
    /

    --특정 개설 과정 
    select vt.t_name as 학생명
    ,vc.c_name as 과정명
    ,vc.s_name as 과목명
    ,t.name as 교사명
    ,vg.writtengrade as 필기성적
    ,vg.practicalgrade as 실기성적
from vwgrades vg 
    inner join vwtrainees vt
        on vt.seq_traineelist = vg.seq_traineelist
            inner join vwcurriculum vc
                on vc.seq_subject = vg.seq_subject
                    inner join tblteacher t
                        on t.seq_teacher = vc.seq_teacher
                             where vc.c_name = 'AWS와 Docker를 활용한 Java Full-Stack 과정(B)'
                                 group by vt.t_name,vc.c_name,vc.s_name,t.name,vg.writtengrade,vg.practicalgrade;


/
--교육생 개인 별
select 
vt.t_name as 학생명
,vt.t_ssn as 주민번호
,vc.c_name as 과정명
,cp.period as 과정기간
,vc.r_name as 강의실명
,vc.s_name as 과목명
,vc.period as 과목기간
,tea.name as 교사명
,ass.situation as 출결
,vg.writtengrade as 필기성적
,vg.practicalgrade as 실기성적 
    from vwgrades vg
        inner join vwtrainees vt
            on vt.seq_traineelist = vg.seq_traineelist
                inner join vwcurriculum vc
                    on vc.seq_subject = vg.seq_subject
                        inner join tblcourseperiod cp
                            on cp.seq_courseperiod = vc.seq_courseperiod
                                inner join tblattendancestatus ass
                                    on ass.seq_attendancestatus = vt.seq_attendancestatus
                                        inner join tblteacher tea
                                            on tea.seq_teacher = vc.seq_teacher
                                                where vt.t_name = '천유서'
                                                    group by vt.t_name,vt.t_ssn,vc.c_name,cp.period,vc.oc_startdate,vc.oc_enddate,vc.r_name,vc.c_name,vc.period,tea.name,ass.situation,vc.s_name,vg.writtengrade,vg.practicalgrade;



-- b-8
--출결 관리
--1. 개설 과정 별
select t.name as 학생명
,a.day as 날짜
,c.name as 과정명 
,ad.situation as 출결
from tblAttendance a
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
                                            where c.name = 'AWS 클라우드와 Elasticsearch를 활용한 Java Full-Stack 과정(B)' and a.day between to_date('2023-09-04', 'YYYY-MM-DD') and to_date('2024-02-04', 'YYYY-MM-DD')
                                                group by t.name,a.day,c.name,ad.situation;


-- 2. 특정 인원 (where 문 ) 
select vt.t_name as 학생명
, vt.a_day as 날짜
, vc.c_name as 과정명
, vt.situation as 출결
from vwtrainees vt
    inner join vwcurriculum vc 
        on vt.seq_opencurriculum = vc.seq_opencurriculum 
            where vt.t_name = '제류혁'
                group by vt.t_name, vt.a_day, vc.c_name, vt.situation;


-- b-9 
--교육 과정 평가 기능 관리
select t.name as 교사명
,ce.grade as 평가점수
,ce.content as 과정후기
from tblcurriculumevaluation ce
    inner join tblopencurriculum oc
        on ce.seq_opencurriculum = oc.seq_opencurriculum
            inner join tblopensubjectlist osl
                on osl.seq_opencurriculum = oc.seq_opencurriculum
                    inner join tblteacher t
                        on t.seq_teacher = osl.seq_teacher
                            group by  t.name,ce.grade,ce.content;


-- b-10 
--교육 희망자 면접 기록 
insert into tblinterviewresults
values(
1,1,'합격','자바에 대한 기초 지식이 있음');


--교육 희망자 정보 조회 

select t.name as 학생명
,t.id as 아이디
,t.ssn as 주민번호
,t.tel as 전화번호 
from tbltrainees t
    inner join tblinterviewschedule s
        on s.seq_trainee = t.seq_trainee;

-- 합격자 불합격자 구분
select t.name as 학생명
,r.status as 합불결과 
from tbltrainees t
    inner join tblinterviewschedule s
        on s.seq_trainee = t.seq_trainee
            inner join tblinterviewresults r
                on r.seq_schedule = s.seq_schedule
                    order by r.status;


<<<<<<< HEAD
-- B.11 
=======
on oc.seq_room = r.seq_room; 

--b-7 
-- 과목별
select j.name,g.writtengrade,g.practicalgrade 
from tblGrades g
inner join tbltestschedule ts
    on g.seq_testschedule = ts.seq_testschedule
    inner join tblsubjectlist sl
    on sl.seq_subjectlist = ts.seq_subjectlist
    inner join tblsubject j
    on s.seq_subject = ts.
    group by j.name;
   
  --교육생 개인 별
    select r.name,j.name,writtengrade,practicalgrade 
from tblGrades g
inner join tblsubjectlist s
    on g.seq_subjectList = s.seq_subjectList
    inner join tblsubject j
    on j.seq_subject = s.seq_subject
    inner join tbltraineelist t
    on t.seq_traineeList = g.seq_traineelist
    inner join tbltrainees r
    on r.seq_trainee = t.seq_trainee
    where r.name = '변소류';

  
--b-8 

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
group by t.name,a.day,c.name,ad.situation;

-- 2. 특정 인원 (where 문 ) 
select tt.name,a.day,c.name,s.situation from tblAttendance a
inner join tblTraineeList t
on a.seq_traineeList = t.seq_traineelist
inner join tblopencurriculum o
on o.seq_opencurriculum = t.seq_opencurriculum
inner join tblCurriculum c
on c.seq_curriculum = o.seq_opencurriculum
inner join tblattendancestatus s
on s.seq_attendancestatus = a.seq_attendancestatus
inner join tblTrainees tt
on tt.seq_trainee = t.seq_trainee
where tt.name = '제류혁';


  --B-9
  
--교사 평가 조회 

select t.name,e.grade,e.content from tblteacherevaluation e
inner join tblopencurriculum o
on e.seq_opencurriculum = o.seq_opencurriculum
inner join tblteacher t
on t.seq_teacher = o.seq_teacher;

  --b-10 

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

--b-11
  
>>>>>>> c8e900c45de3608dbf393d22c3e71b682b9f5e04
=======

-- b.11 
>>>>>>> a9f01b0d592c4bbe7626194005b4e3a5add44bbd
--교재 추가 
insert into tblTextbook
values(
20,'OpenCV-Python으로 배우는 영상처리 및 응용','생능');
<<<<<<< HEAD

--교재 수정
update tblTextbook set publisher  = '에이콘' where name = 'OpenCV-Python으로 배우는 영상처리 및 응용';

--교재 삭제
delete from tblTextbook where name ='OpenCV-Python으로 배우는 영상처리 및 응용';
=======
>>>>>>> c8e900c45de3608dbf393d22c3e71b682b9f5e04

--교재 수정

update tblTextbook set publisher  = '에이콘' where name = 'OpenCV-Python으로 배우는 영상처리 및 응용';

--교재 삭제

delete from tblTextbook where name ='OpenCV-Python으로 배우는 영상처리 및 응용';

-- 원혁
--b-12 
--온라인 강의 수강 여부 조회
select 
t.name as "이름", 
ol.title as "온라인 강의명", 
oc.status as "수강 여부"
    from tblTrainees t
        inner join tblTraineeList tl
            on t.seq_trainee = tl.seq_trainee
                inner join tblOnlineCourseList oc
                    on tl.seq_traineeList = oc.seq_traineeList
                        inner join tblOnlineLecture ol
                            on oc.seq_onlineLecture = ol.seq_onlineLecture;
  
    
--b-13 
-- 출결 인정 서류 관리
-- 제출 서류 등록
insert into tblAttendancePapers (seq_attendancePapers, seq_traineeList, status, day, document, admitattendance)
    values (1, 1, 조퇴, '2023-09-13', '코로나 진단 서류', '출석 인정');
    
-- 제출 서류 수정
update tblAttendancePapers
    set document = '국민취업지원제도 상담'
        where seq_attendancePapers = 1;

-- 출결 인정 서류 조회
select 
t.name as "이름", 
ap.document "제출 서류", 
ap.admitattendance as "출석 인정 여부", 
ap.status "출결" 
from tblTrainees t
    inner join tblTraineeList tl
        on t.seq_trainee = tl.seq_trainee
            inner join tblAttendancePapers ap
                on tl.seq_traineeList = ap.seq_traineeList;

-- 삭제
delete from tblAttendancePapers where seq_attendancePapers = 1;


--b-14 
-- 1. 기자재 관리
-- 기자재 등록
insert into tblEquipment (seq_equipment, name, importDate, expectedExportDate, amount, brokenAmount) 
    values (1, '사물함', to_date('2016-01-17', 'yyyy-mm-dd'), null,176,0);

-- 기자재 총 개수 수정
update tblEquipment set amount = 100 where seq_equipment = 1;

-- 기자재 갯수 조회
select * from tblEquipment;

-- 기자재 수량 삭제
delete from tblEquipment where seq_equipment = 1;

-- 2. 사물함 배정 및 관리
-- 등록
insert into tblLocker(seq_locker, seq_equipment, seq_traineelist) 
    values (132, 1, 132);
    
-- 배정된 사물함을 빈 사물함으로 수정
update tblLocker set seq_traineeList = null where seq_locker = 132;

-- 조회 
select e.name as "기자재명", 
l.seq_locker as "사물함 번호",
l.seq_traineelist as "교육생 목록 번호", 
t.name as "교육생 이름", 
tl.status as "수료 및 중도퇴사", 
tl.day as "수료 및 중도퇴사 날짜"
from tblEquipment e
    inner join tblLocker l
        on e.seq_equipment = l.seq_equipment
            left outer join tblTraineeList tl
                on tl.seq_traineeList = l.seq_traineeList
                    left outer join tblTrainees t
                        on t.seq_trainee = tl.seq_trainee
                            order by l.seq_locker;


--b-15 
-- 공지사항 관리
-- 1. 등록
insert into tblNotice (seq,notice, seq_openCurriculum, title, content) values (1, 1, 'AWS와 Docker를 활용한 Java Full-Stack 과정(A) 공지사항', '"안녕하세요, AWS와 Docker를 활용한 Java Full-Stack 과정(A) 수강생 여러분!
프로젝트 발표일이 7일 남았습니다. 이번 프로젝트에서도 열정적인 참여와 질문을 부탁드리며, 함께 더 나은 개발자가 되도록 노력해봅시다!"');

-- 2. 삭제
delete from tblNotice where seq_notice = 1;
    
-- 3. 수정
update tblNotice set content = '수업 시간에 밖에 돌아다니지 마세요~' where seq_notice = 2;
    
-- 4. 조회      
select 
n.seq_notice as "번호", 
n.seq_openCurriculum as "개설 교육과정 번호", 
c.name as "과정명", 
n.title as "제목", 
n.content as "공지 사항" 
from tblNotice n
        inner join tblOpenCurriculum oc
           on oc.seq_openCurriculum = n.seq_notice
                right outer join tblCurriculum c
                    on oc.seq_curriculum = c.seq_curriculum;


--b-16
-- 취업 현황 조회 및 관리
-- 등록
insert into tblEmploymentStatus 
(seq_employmentStatus, seq_traineeList, status, city, company, field, salary)
values (1, 1, '취업', '서울', '금호타이어', '프론트엔드', 36000000);

-- 수정
update tblEmploymentStatus 
set status = '취업', 
city = '제주', 
company = '배달의 민족', 
field = '프론트엔드', 
salary = 50000000 
where seq_employmentStatus = 2;

-- 조회(교육과정별 취업현황 조회)
select 
es.seq_employmentStatus as "번호", 
tl.seq_traineeList as "교육생 목록 번호", 
oc.seq_openCurriculum as "개설 교육과정 번호", 
c.name as "교육 과정", 
es.status as "취업 여부", 
es.city as "지역", 
es.field as "분야", 
es.salary as "연봉" 
from tblEmploymentStatus es
    left outer join tblTraineeList tl
        on tl.seq_traineeList = es.seq_traineeList
            inner join tblOpenCurriculum oc
                on oc.seq_openCurriculum = tl.seq_openCurriculum
                    inner join tblCurriculum c
                        on oc.seq_curriculum = c.seq_curriculum
                            where es.status = '취업'
                                order by es.seq_employmentStatus;
                  
-- 삭제
delete from tblEmploymentStatus where seq_employmentStatus = 1;


--b-17
--1. 수료생의 출결 현황 조회
select t_name, a_day, situation 
from vwtrainees where a_day>(sysdate-31) and a_day<=sysdate;

--2. 교육생 계좌 정보 조회와 훈련장려금 계산
select distinct t_name, bank, account,
    case
        when 출석여부 = -1 and count(출석여부) >= 4 then 0
        when 출석여부 = 1 and (count(출석여부)/3) >= 1 then 200000-(10000*floor(count(출석여부)/3))
        when 출석여부 = 1 and (count(출석여부)/3) < 1 then 200000
        when 출석여부 = 2 and count(출석여부) <= 3 then 0
        when 출석여부 = 2 and count(출석여부) > 3 then 200000
    end as 훈련장려금
from
(select t_name, bank, account,
    case
        when situation = '정상' then 2
        when situation = '결석' then -1
        else 1
    end as 출석여부
from vwtrainees 
    where a_day>(sysdate-31) and a_day<=sysdate)
        group by t_name, bank, account,출석여부;


-- 민곤
--c-1 
select * from tblTraineeList;
--교사는 강의 스케줄,과목 정보를 조회한다
select distinct
s.seq_subject as 과목번호,
c.name as 과정명,
cp.status as 과정상태,
oc.startDate as "과정 시작일",
oc.endDate as "과정 종료일",
r.name as 강의실명,
count(tl.seq_opencurriculum) as "교육생 등록 인원",
s.name as 과목명,
os.startdate as 과목시작일,
os.enddate as 과목종료일,
tb.name as 교재명
from tblTeacher t
    inner join tblOpenSubjectList os
        on t.seq_teacher = os.seq_teacher
            inner join tblOpenCurriculum oc
                on oc.seq_openCurriculum = os.seq_openCurriculum
                    inner join tblCurriculumProgress cp
                        on cp.seq_curriculumProgress = oc.seq_curriculumProgress
                            inner join tblTraineeList tl
                                on oc.seq_openCurriculum = tl.seq_openCurriculum
                                    inner join tblTrainees tr
                                        on tr.seq_trainee = tl.seq_trainee
                                            inner join tblsubjectlist sl
                                                on sl.seq_subjectList = os.seq_subjectList
                                                 inner join tblsubject s 
                                                    on s.seq_subject = sl.seq_subject
                                                        inner join tblRoom r
                                                            on r.seq_room = oc.seq_room
                                                                inner join tblCurriculum c 
                                                                    on c.seq_Curriculum = oc.seq_Curriculum
                                                                     inner join tblCoursePeriod cp
                                                                        on cp.seq_coursePeriod = c.seq_coursePeriod
                                                                            inner join tblTextBook tb 
                                                                                on tb.seq_textbook = os.seq_textbook
                                                                                where t.name = '김민곤'
                                                                                  group by s.seq_subject,c.name,cp.status,oc.startDate,oc.endDate,r.name
                                                                                  ,tl.seq_opencurriculum,s.name,os.startdate,os.enddate,tb.name
                                                                                order by s.seq_subject asc;
                                                                                
 --교사는 교육생 정보를 조회 한다.                                                          
select distinct 
tr.name as 교육생이름,
tr.tel as 교육생전화번호,
tr.registrationDate as 교육생등록일,
tl.status as 교육생상태
from tblTeacher t
    inner join tblOpenSubjectList os
        on t.seq_teacher = os.seq_teacher
            inner join tblOpenCurriculum oc
                on oc.seq_openCurriculum = os.seq_openCurriculum
                    inner join tblCurriculumProgress cp
                        on cp.seq_curriculumProgress = oc.seq_curriculumProgress
                            inner join tblTraineeList tl
                                on oc.seq_openCurriculum = tl.seq_openCurriculum
                                    inner join tblTrainees tr
                                        on tr.seq_trainee = tl.seq_trainee
                                            inner join tblsubjectlist sl
                                                on sl.seq_subjectList = os.seq_subjectList
                                                 inner join tblsubject s 
                                                    on s.seq_subject = sl.seq_subject
                                                        inner join tblRoom r
                                                            on r.seq_room = oc.seq_room
                                                                inner join tblCurriculum c 
                                                                    on c.seq_Curriculum = oc.seq_Curriculum
                                                                     inner join tblCoursePeriod cp
                                                                        on cp.seq_coursePeriod = c.seq_coursePeriod
                                                                            inner join tblTextBook tb 
                                                                                on tb.seq_textbook = os.seq_textbook
                                                                                where t.name = '김민곤';                            


-- 혜정
--c-2 배점 입출력
-- 1. 교사가 강의를 마친 과목에 대한 성적 처리를 위해서 배점 입출력을 할 수 있어야 한다.
-- 1.1. 배점 출력
select 
ti.seq_openSubjectList "과목 목록 번호",
ti.writtenPoints "필기 배점",
ti.practicalPoints "실기 배점",
ti.attendancePoints "출결 배점"
from tblTestInfo ti
    inner join tblOpenSubjectList osl
        on ti.seq_openSubjectList = osl.seq_openSubjectList
            where osl.endDate < sysdate;

-- 2. 교사는 자신이 강의를 마친 과목의 목록 중에서 특정 과목을 선택하고 해당 과목의 배점 정보를 출결, 필기, 실기로 구분해서 등록할 수 있어야 한다. 시험 날짜, 시험 문제를 추가할 수 있어야 한다.
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
update tblTestInfo
set writtenDate = TO_DATE('2023-10-03', 'YYYY-MM-DD'), 
    practicalDate = TO_DATE('2023-10-04', 'YYYY-MM-DD')
where seq_openSubjectList = 1;


-- 2.6. 시험 문제 추가
insert into tblQuestion
values(1,'자바 소스 확장자는?','3');

-- 과목과 연결
insert into tblExampaper(seq_attendancepapers, seq_question, seq_subject, kind) 
values (1, 1, 1, '필기');

--4. 과목 목록 출력 시 과목번호, 과정명, 과정기간(시작 년월일, 끝 년월일), 강의실, 과목명, 과목기간(시작 년월일, 끝 년월일), 교재명, 출결, 필기, 실기 배점 등이 출력되고, 
-- 특정 과목을 과목번호로 선택 시 출결 배점, 필기 배점, 실기 배점, 시험 날짜, 시험 문제를 입력할 수 있는 화면으로 연결되어야 한다.
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
distinct osl.seq_subjectList "과목 목록 번호",
vt.seq_trainee "학생 번호",
vt.t_name "이름",
vt.t_id "아이디",
vt.t_tel "전화번호"
from  vwTrainees vt
    inner join tblOpenSubjectList osl
        on osl.seq_openCurriculum = vt.seq_openCurriculum
            where osl.seq_subjectList = 1; -- 특정과목
                    
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
                    
-- 2.3. 성적 입력
INSERT INTO tblGrades(SEQ_GRADES, SEQ_TRAINEELIST, SEQ_testInfo, WRITTENGRADE, PRACTICALGRADE, ATTENDANCEGRADE)
VALUES (1, 1, 1, 32, 31, 17);


-- 3. 과목 목록 출력시 과목번호, 과정명, 과정기간(시작 년월일, 끝 년월일), 강의실, 과목명, 과목기간(시작 년월일, 끝 년월일), 교재명, 출결, 필기, 실기 배점, 성적 등록 여부 등이 출력되고, 
-- 3.1. 과목 목록 출력                                         
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
case
    when g.attendanceGrade is not null and g.writtenGrade is not null and g.practicalGrade is not null then '완료'
    else '미완료' 
end "성적 등록 여부"
from vwCurriculum vc
    inner join tblTextbook b
        on b.seq_textbook = vc.seq_textbook
            inner join tblTestInfo ti
                on ti.seq_openSubjectList = vc.seq_openSubjectList
                    left outer join tblGrades g
                        on g.seq_testInfo = ti.seq_testInfo;


-- 특정 과목을 과목번호로 선택시 교육생 정보(이름, 전화번호, 수료 또는 중도탈락), 날짜 및 성적이 출결, 필기, 실기 점수로 구분되어서 출력되어야 한다. 
-- 3.2. 특정 과목(자바) 
select 
distinct vt.seq_traineeList "교육생 목록 번호",
vt.t_name 이름,
vt.t_tel 전화번호,
vt.tl_status "상태",
vt.tl_day "상태 날짜",
vg.attendanceGrade "출결 점수",
vg.writtenGrade "필기 점수",
vg.practicalGrade "실기 점수"
from vwGrades vg
    inner join vwTrainees vt
        on vt.seq_traineeList = vg.seq_traineeList
            where vg.seq_subject = 1; --특정 과목
                                            
-- 4. 성적 등록 여부는 교육생 전체에 대해서 성적을 등록했는지의 여부를 출력한다.
select 
g.seq_testInfo "시험 정보 번호",
tl.seq_trainee "학생 번호",
case
    when g.attendanceGrade is not null and g.writtenGrade is not null and g.practicalGrade is not null then '완료'
    else '미완료'
end "성적 등록 여부"
from tblGrades g
    right outer join tblTraineeList tl
        on tl.seq_traineeList = g.seq_traineeList
            order by "시험 정보 번호";


--c-4 출결 관리 및 출결 조회
-- 1. 교사가 강의한 과정에 한해 선택하는 경우 모든 교육생의 출결을 조회할 수 있어야 한다.
select 
oc.seq_openCurriculum "개설 교육과정 번호",
asl.seq_subject "과목 번호",
tl.seq_trainee "교육생 번호",
a.day 날짜,
to_char(a.inTime, 'HH24:MI:SS') "출근 시간",
to_char(a.outTime, 'HH24:MI:SS') "퇴근 시간",
tas.situation "상태"
from tblOpenCurriculum oc
    inner join tblOpenSubjectList osl
        on osl.seq_openCurriculum = oc.seq_openCurriculum
            inner join tblAvailableSubjectList asl
                on asl.seq_teacher = osl.seq_teacher
                    inner join tblTraineeList tl
                        on tl.seq_openCurriculum = oc.seq_openCurriculum
                            inner join tblAttendance a
                                on a.seq_traineeList = tl.seq_traineeList
                                    inner join tblAttendanceStatus tas
                                        on tas.seq_attendanceStatus = a.seq_attendanceStatus
                                        where osl.seq_teacher = 1 -- 특정교사
                                            and asl.seq_subject = 1 -- 특정 과목
                                                and tl.seq_trainee = 1 -- 특정 인원
                                                    and a.inTime between to_date('2023-11-04', 'YYYY-MM-DD') and to_date('2024-02-04', 'YYYY-MM-DD') -- 특정 기간
                                                        order by tl.seq_trainee;
        
    
-- 민곤                                                                           
--c-5
--교사가 자신의 강의평가를 조회 할 수 있다.
select distinct 
oc.seq_openCurriculum "교육 과정 번호",
ce.grade as 점수,
ce.content as 내용
from tblCurriculumEvaluation ce
    inner join tblTraineeList tl
        on tl.seq_traineeList = ce.seq_traineeList
            inner join tblOpenCurriculum oc 
                on oc.seq_openCurriculum = tl.seq_openCurriculum
                    inner join tblOpenSubjectList sl 
                        on oc.seq_openCurriculum = sl.seq_openCurriculum
                            inner join tblTeacher t 
                                on t.seq_teacher = sl.seq_teacher
                                    where t.name = '김민곤';   
        
        
--c-6 추천 도서 관리
--1. 교재 추가
--새로운 교재 정보를 추가한다.
insert into tblTextbook values(1,'자바의 정석','도우출판');

--2. 교재 추천
-- 교재를 추천할 수 있다.
insert into tblRecommendTextbook (seq_recommendTextbook, seq_teacher, seq_textbook, grade) values (1, 1, 1, 4);


-- 민곤                                                                           
-- D-1
-- 성적 조회 :개인 정보와 수강한 과정명, 과목기간(시작 년월일, 끝 년월일), 강의실이 타이틀로 출력된다.
select distinct 
tr.name as 교육생이름,
tr.tel as 전화번호,
c.name as 과정명,
s.name as 과목명,
os.startdate as 과목시작일,
os.enddate as 과목종료일,
r.name as 강의실명
from tblTrainees tr
    inner join tblTraineeList tl
        on tr.seq_trainee = tl.seq_trainee
            inner join tblOpenCurriculum oc
                on oc.seq_openCurriculum = tl.seq_openCurriculum
                    inner join tblCurriculum c
                        on c.seq_curriculum = oc.seq_curriculum
                            inner join tblroom r 
                                on r.seq_room = oc.seq_room
                                    inner join tblOpenSubjectList os
                                        on  oc.seq_openCurriculum = os.seq_openCurriculum
                                            inner join tblSubjectList sl 
                                                on sl.seq_subjectList = os.seq_subjectList
                                                    inner join tblsubject s
                                                        on s.seq_subject = sl.seq_subject
                                                            where tr.name = '지엄홍';


--과목번호, 과목명, 과목기간(시작 년월일, 끝 년월일), 교재명, 교사명, 과목별 배점 정보(출결, 필기, 실기 배점),
--과목별 성적 정보(출결, 필기, 실기 점수), 과목별 시험날짜, 시험문제가 출력되어야 한다.
select distinct 
g.seq_subject as 과목번호,
g.s_name as 과목명,
osl.startdate as 과목시작일,
osl.enddate as 과목종료일,
b.name as 교재명,
tc.name as 강사명,
g.writtenPoints as 필기배점,
g.practicalPoints as 실기배점,
g.attendancePoints as 출결배점,
g.writtenGrade as 필기점수,
g.practicalGrade as 실기점수,
g.attendanceGrade as 출결점수,
g.writtenDate as 필기날짜,
g.practicalDate as 실기날짜,
q.question as 문제
from vwgrades g
    inner join tbltraineelist tl
        on g.seq_traineelist = tl.seq_traineelist
            inner join tbltrainees t
                on tl.seq_trainee = t.seq_trainee
                    inner join tblteacher tc
                        on g.seq_teacher = tc.seq_teacher
                            inner join tblopensubjectlist osl
                                on g.seq_opensubjectlist = osl.seq_opensubjectlist
                                    inner join tbltextbook b
                                        on osl.seq_textbook = b.seq_textbook
                                            inner join tblopencurriculum oc
                                                on g.seq_opencurriculum = oc.seq_opencurriculum
                                                    inner join tblroom r
                                                        on oc.seq_room = r.seq_room
                                                            inner join tblexampaper ep
                                                                on osl.seq_openSubjectList = ep.seq_openSubjectList
                                                                    inner join tblquestion q
                                                                        on ep.seq_question = q.seq_question
                                                                            order by 강사명;



--시험을 안본 학생의 점수는 null로
select
c.c_name as 과정명,
c.s_name as 과목명,
t.name as 학생명,
g.writtenGrade as 필기점수,
g.practicalGrade as 실기점수,
g.attendanceGrade as 출결점수
from vwcurriculum c
    join tblTraineeList tl
        on c.seq_openCurriculum = tl.seq_openCurriculum
            left outer join tblTestInfo ti
                on c.seq_opensubjectlist = ti.seq_opensubjectlist
                    left outer join tblGrades g
                        on ti.seq_TestInfo = g.seq_TestInfo and tl.seq_traineelist = g.seq_traineelist
                            inner join tblTrainees t
                                on tl.seq_trainee = t.seq_trainee
                                    order by 학생명;
                                    
                        
-- D-2
-- 출결 관리 및 조회 

--출석 기록 
-- (출근 퇴근이 하루에 있으면 카운트) 매일 근태 관리
--성적이 등록되지 않은 과목이 있는 경우 과목 정보는 출력되고 점수는 null 값으로 출력되도록 한다.                                                                                                     
select 
t.name 이름,
ad.situation 상태,
a.day 날짜,
count(
case when to_date(substr(a.intime,1,8),'yyyy-mm-dd') = to_date(substr(a.outtime,1,8),'yyyy-mm-dd') then 1
end) "근태 등록 여부"
from tblAttendance a
	inner join tblTraineelist tl
		on tl.seq_traineelist = a.seq_traineelist
			inner join tbltrainees t
				on t.seq_trainee = tl.seq_trainee
					inner join tblAttendancestatus ad
						on ad.seq_attendancestatus = a.seq_attendancestatus
							where t.name = '천유서'
								group by t.name,a.intime,a.outtime,ad.situation,a.day;


-- 년 월 일로 보는 방법 
select 
t.name 이름,
ad.situation 상태,
a.day 날짜
from tblAttendance a
	inner join tblTraineelist tl
		on tl.seq_traineelist = a.seq_traineelist
			inner join tbltrainees t
				on t.seq_trainee = tl.seq_trainee
					inner join tblAttendancestatus ad
						on ad.seq_attendancestatus = a.seq_attendancestatus
							where a.day like '23%' and t.name = '천유서';


--D-3  
--교육 과정 평가 (수료 학생만 가능) 
insert into tblcurriculumEvaluation
values(
1,1,1,5,'설명을 자세하게 해주신다.');


-- D-4 교사별로 출력되야 한다. 자기가 수강 중인 교사님의 추천 교재만 볼 수 있어야 한다.
-- 교사 추천 도서 조회 
-- 조회
select 
distinct osl.seq_openCurriculum 교육과정명,
tea.name 교사명,
rb.grade 별점,
b.name "책 제목",
b.publisher "출판사명"
from tblRecommendTextbook rb
    inner join tblOpenSubjectList osl
        on rb.seq_teacher = osl.seq_teacher
            inner join tblTraineeList tl
                on tl.seq_openCurriculum = osl.seq_openCurriculum
                    inner join tblTeacher tea
                        on tea.seq_teacher = osl.seq_teacher
                            inner join tblTextbook b
                                on b.seq_textbook = rb.seq_textbook
                                    where osl.seq_teacher = rb.seq_teacher
                                    and tl.seq_trainee = 1;


--D-5
--서류 제출(제출만 가능)
-- 서류 제출
insert into tblAttendancePapers
values(
1,1,'조퇴','2023-09-13','코로나 진단 서류','');

<<<<<<< HEAD
=======
--c-5
>>>>>>> c8e900c45de3608dbf393d22c3e71b682b9f5e04
