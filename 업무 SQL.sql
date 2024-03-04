-- 희연
--b-1 

--b-2 

--b-3 

--b-4 

--b-5 


-- 원준
--b-6 

-- 교육생 등록
insert into tbltrainees
values(
1,'이채린','linear99','2049178','01012345678',to_date(sysdate, 'yyyy-mm-dd'),'우리은행','012-592-384171');

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
delete from tblTrainees where name = '이채린';

-- 교육생 검색

select c.name,oc.startdate,oc.enddate,r.name,tl.status,tl.day from tbltrainees t
inner join tbltraineelist tl
on t.seq_trainee = tl.seq_trainee
inner join tblopencurriculum oc
on tl.seq_opencurriculum = oc.seq_curriculum
inner join tblcurriculum c
on oc.seq_curriculum = c.seq_curriculum
inner join tblRoom r
on oc.seq_room = r.seq_room; 

--b-7  ( 테이블 수정 중이라 못 넣음)
-- 과목별
select c.name,t.name,cp.period,r.name,t.ssn,g.writtengrade,g.practicalgrade from tblgrades g
inner join tbltraineelist tl
on tl.seq_traineelist = g.seq_traineelist
inner join tbltrainees t
on t.seq_trainee = tl.seq_trainee
inner join tblopencurriculum oc
on oc.seq_opencurriculum = tl.seq_opencurriculum
inner join tblcurriculum c
on c.seq_curriculum = oc.seq_curriculum
inner join tblcoursePeriod cp
on cp.seq_coursePeriod = c.seq_courseperiod
inner join tblroom r
on r.seq_room = oc.seq_room;
    select * from tblsubject;
    
    
    --특정 개설 과정 
select s.name,count(case when g.writtengrade is not null then '있음' end),count(case when g.practicalgrade is not null then '있음' end),count(case when q.seq_question is not null then '있음' end)
from tblGrades g
inner join tbltraineelist tl
on g.seq_traineelist = tl.seq_traineelist
inner join tblopencurriculum oc
on oc.seq_opencurriculum = tl.seq_opencurriculum
inner join tblcurriculum c
on c.seq_curriculum = oc.seq_curriculum
inner join tblsubjectlist sl
on sl.seq_curriculum = c.seq_curriculum
inner join tblcourseperiod cp
on cp.seq_coursePeriod = c.seq_courseperiod
inner join tblsubject s 
on s.seq_subject = sl.seq_subject
inner join tblexampaper ep
on ep.seq_subject = s.seq_subject
inner join tblquestion q
on q.seq_question = ep.seq_question
group by s.name;
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

--b-13 

--b-14 

--b-15 

--b-16


-- 혜정
-- 수정 필요

--c-2 배점 입출력
-- 1. 교사가 강의를 마친 과목에 대한 성적 처리를 위해서 배점 입출력을 할 수 있어야 한다.
-- 1.1. 배점 입력
insert into tblTestInfo
values (1, 47, TO_DATE('2023-10-03', 'YYYY-MM-DD'), TO_DATE('2023-10-04', 'YYYY-MM-DD'), 40, 40, 20);

-- 1.2. 배점 출력
select 
seq_subjectList "과목 목록 번호",
writtenPoints "필기 배점",
practicalPoints "실기 배점",
attendancePoints "출결 배점"
from tblTestInfo;


--2. 교사는 자신이 강의를 마친 과목의 목록 중에서 특정 과목을 선택하고 해당 과목의 배점 정보를 출결, 필기, 실기로 구분해서 등록할 수 있어야 한다. 시험 날짜, 시험 문제를 추가할 수 있어야 한다.
-- 2.1. 특정 과목 선택
insert into tblTestInfo(seq_testInfo, seq_subjectList) 
values (1, 47);

-- 2.2. 필기 배점 등록
update tblTestInfo 
set writtenPoints = 40
where seq_subjectList = 47;

-- 2.3.실기 배점 등록
update tblTestInfo
set practicalPoints = 40
where seq_subjectList = 47;

-- 2.4. 출결 배점 등록
update tblTestInfo
set attendancegrade = 20
where seq_subjectList = 47;

-- 2.5. 시험 날짜 추가
update tblTestInfo
set writtenDate = TO_DATE('2023-10-03', 'YYYY-MM-DD'),
    practicalDate = TO_DATE('2023-10-04', 'YYYY-MM-DD')
where seq_subjectList = 47;


-- 2.6. 시험 문제 추가
insert into tblQuestion
values(1,'자바 소스 확장자는?','3');

-- 과목과 연결
insert into tblExampaper(seq_attendancepapers, seq_question, seq_subject, kind) 
values (1, 1, 1, '필기');


--3. 출결, 필기, 실기의 배점 비중은 담당 교사가 과목별로 결정한다. 단, 출결은 최소 20점 이상이어야 하고, 출결, 필기, 실기의 합은 100점이 되도록 한다.
insert into tblTestInfo
values (1, 47, TO_DATE('2023-10-03', 'YYYY-MM-DD'), TO_DATE('2023-10-04', 'YYYY-MM-DD'), 40, 40, 20);


--4. 과목 목록 출력 시 과목번호, 과정명, 과정기간(시작 년월일, 끝 년월일), 강의실, 과목명, 과목기간(시작 년월일, 끝 년월일), 교재명, 출결, 필기, 실기 배점 등이 출력되고, 
-- 특정 과목을 과목번호로 선택 시 출결 배점, 필기 배점, 실기 배점, 시험 날짜, 시험 문제를 입력할 수 있는 화면으로 연결되어야 한다.
-- 과목기간(시작 년월일, 끝 년월일)과 입력 화면으로 넘어가는 기능은 자바로 구현한다.
select 
s.seq_subject "과목 번호",
c.name 과정명,
oc.startDate "과정 시작일",
oc.endDate "과정 종료일",
r.name 강의실,
s.name 과목명,
s.period "과목 기간(일)",
t.name 교재명,
ti.writtenPoints "필기 배점",
ti.practicalPoints "실기 배점",
ti.attendancePoints "출결 배점"
from tblSubject s
    inner join tblSubjectList sl
        on s.seq_subject = sl.seq_subject
            inner join tblCurriculum c
                on c.seq_curriculum = sl.seq_curriculum
                    inner join tblOpenCurriculum oc
                        on oc.seq_curriculum = c.seq_curriculum
                            inner join tblRoom r
                                on r.seq_room = oc.seq_room
                                    inner join tblTextbookList tl
                                        on tl.seq_subject = s.seq_subject
                                            inner join tblTextbook t
                                                on t.seq_textbook = tl.seq_textbook
                                                    inner join tblTestInfo ti
                                                        on ti.seq_subjectList = sl.seq_subjectList;

--5. 배점 등록이 안 된 과목인 경우는 과목 정보가 출력될 때 배점 부분은 null 값으로 출력한다.
select 
distinct s.name 과목명,
ti.writtenPoints "필기 배점",
ti.practicalPoints "실기 배점",
ti.attendancePoints "출결 배점"
from tblTestInfo ti
    left outer join tblSubjectList sl
        on ti.seq_subjectList = sl.seq_subjectList
            right outer join tblSubject s
                on s.seq_subject = sl.seq_subject;


--c-3 성적 입출력
-- 1. 교사가 강의를 마친 과목에 대한 성적 처리를 위해서 성적 입출력을 할 수 있어야 한다.
-- 강의를 마친 과목에 대한 내용은 자바에서 다룬다.
-- 1.1. 성적 입력
INSERT INTO tblGrades(SEQ_GRADES, SEQ_TRAINEELIST, SEQ_testInfo, WRITTENGRADE, PRACTICALGRADE, ATTENDANCEGRADE)
VALUES (1, 1,1, 32, 31, 17);

-- 1.2. 성적 출력
select * from tblGrades g
    inner join tblTestInfo ti
        on g.seq_testInfo = ti.seq_testInfo;

-- 2. 교사는 자신이 강의를 마친 과목의 목록 중에서 특정 과목을 선택하면, 교육생 정보가 출력되고, 특정 교육생 정보를 선택하면, 해당 교육생의 시험 점수를 입력할 수 있어야 한다. 이때, 출결, 필기, 실기 점수를 구분해서 입력할 수 있어야 한다.
-- 2.1. 


-- 3. 과목 목록 출력시 과목번호, 과정명, 과정기간(시작 년월일, 끝 년월일), 강의실, 과목명, 과목기간(시작 년월일, 끝 년월일), 교재명, 출결, 필기, 실기 배점, 성적 등록 여부 등이 출력되고, 특정 과목을 과목번호로 선택시 교육생 정보(이름, 전화번호, 수료 또는 중도탈락) 및 성적이 출결, 필기, 실기 점수로 구분되어서 출력되어야 한다.
-- 3.1. 

-- 4. 성적 등록 여부는 교육생 전체에 대해서 성적을 등록했는지의 여부를 출력한다.
-- 

-- 5. 과정을 중도 탈락해서 성적 처리가 제외된 교육생이더라도 교육생 명단에는 출력되어야 한다. 중도 탈락 여부를 확인할 수 있도록 해야 한다.



-- 중도 탈락인 경우 중도탈락 날짜가 출력되도록 한다.

-- 중도 탈락 처리된 교육생의 성적인 경우 중도탈락 이후 날짜의 성적은 입력하지 않는다.



--c-4 출결 관리 및 출결 조회
-- 교사가 강의한 과정에 한해 선택하는 경우 모든 교육생의 출결을 조회할 수 있어야 한다.

-- 출결 현황을 기간별(년, 월, 일) 조회할 수 있어야 한다.

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

-- D-1 (테이블 수정 중...)

-- 성적조회
select * from tbltrainees;
select * from tblTraineelist;
select * from tblopencurriculum;
select * from tblcurriculum;
select * from tblsubjectlist;

select s.name,t.name,t.id,t.ssn,t.tel,c.name,r.name from tbltrainees t
inner join tbltraineeList tl
on t.seq_trainee = tl.seq_trainee
inner join tblopencurriculum oc
on oc.seq_opencurriculum = tl.seq_opencurriculum
inner join tblroom r
on r.seq_room = oc.seq_room
inner join tblcurriculum c
on c.seq_curriculum = oc.seq_curriculum
inner join tblsubjectlist sl
on sl.seq_curriculum = c.seq_curriculum
inner join tblsubject s
on s.seq_subject = sl.seq_subject
group by s.name,t.name,t.id,t.ssn,t.tel,c.name,oc.startdate,oc.enddate,r.name
order by s.name;


-- D-2
-- 출결 관리 및 조회 

--출석 기록 

select * from tblTraineelist;
select * from tbltrainees;
select * from tblattendancestatus;
select * from tblattendance;

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
