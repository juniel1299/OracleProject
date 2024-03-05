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
    
--b-5 tblSubjectList
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
--b-6 

--b-7 

--b-8 

--b-10 

--b-11


-- 원혁
--b-12 

--b-13 

--b-14 

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