--교육생 목록
select -- 132번 항목까지 배정 완료 
s.seq_trainee 교육생pk,
r.status 면접결과,
s.day 면접일
from tblInterviewResults r
    inner join tblInterviewSchedule s
        on s.seq_schedule = r.seq_schedule
            where r.status = '합격'
                order by day;

select 
o.seq_opencurriculum 개설교육과정pk,
o.seq_room 강의실pk,
r.capacity 인원
    from tblOpenCurriculum o
        join tblRoom r
            on r.seq_room = o.seq_room; 
            
--진행 OR 종료 교육 과정 : 1, 3(26), 4(26), 5, 7(26)
--7: 23/09/04 ~ 24/02/15
--4: 23/12/26 ~ 24/06/22
--3: 23/12/29 ~ 24/06/10
--5: 24/01/05 ~ 24/07/02
--1: 24/02/29 ~ 24/08/26

--7(20): 23/09/04
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (1, 26, 7);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (2, 91, 7);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (3, 105, 7);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (4, 64, 7);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (5, 142, 7);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (6, 143, 7);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (7, 1, 7);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (8, 96, 7);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (9, 88, 7);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (10, 98, 7);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (11, 119, 7);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (12, 23, 7);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (13, 78, 7);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (14, 84, 7);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (15, 56, 7);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (16, 248, 7);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (17, 111, 7);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (18, 85, 7);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (19, 24, 7);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (20, 203, 7);

update tblTraineeList 
set status = '중도탈락', 
    day  = to_date('2023-10-13','yyyy-mm-dd')
where seq_traineeList = 10;

update tbltraineelist 
set status = '수료', 
    day  = to_date('2024-02-15','yyyy-mm-dd')
where seq_traineelist between 1 and 20
and seq_traineelist != 10;

--4(26): 23/12/26
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (21, 108, 4);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (22, 62, 4);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (23, 67, 4);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (24, 95, 4);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (25, 82, 4);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (26, 47, 4);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (27, 90, 4);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (28, 93, 4);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (29, 68, 4);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (30, 80, 4);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (31, 147, 4);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (32, 17, 4);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (33, 100, 4);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (34, 126, 4);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (35, 112, 4);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (36, 116, 4);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (37, 109, 4);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (38, 7, 4);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (39, 34, 4);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (40, 6, 4); 
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (41, 29, 4);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (42, 244, 4);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (43, 69, 4);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (44, 41, 4);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (45, 40, 4);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (46, 28, 4);

update tblTraineeList 
set status = '중도탈락', 
    day  = to_date('2024-01-26','yyyy-mm-dd')
where seq_traineeList = 26;

update tblTraineeList 
set status = '중도탈락', 
    day  = to_date('2024-02-13','yyyy-mm-dd')
where seq_traineeList = 40;

update tblTraineeList 
set status = '중도탈락', 
    day  = to_date('2024-02-23','yyyy-mm-dd')
where seq_traineeList = 32;

--3(26): 23/12/29
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (47, 103, 3);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (48, 74, 3);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (49, 57, 3);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (50, 201, 3);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (51, 81, 3);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (52, 58, 3);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (53, 192, 3);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (54, 148, 3);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (55, 19, 3);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (56, 42, 3);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (57, 87, 3);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (58, 204, 3);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (59, 125, 3);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (60, 121, 3);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (61, 132, 3);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (62, 250, 3);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (63, 70, 3);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (64, 240, 3);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (65, 3, 3);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (66, 217, 3);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (67, 213, 3);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (68, 31, 3);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (69, 140, 3);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (70, 63, 3);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (71, 51, 3);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (72, 22, 3);

update tblTraineeList 
set status = '중도탈락', 
    day  = to_date('2024-01-19','yyyy-mm-dd')
where seq_traineeList = 55;

update tblTraineeList 
set status = '중도탈락', 
    day  = to_date('2024-01-25','yyyy-mm-dd')
where seq_traineeList = 67;

--5(30): 24/01/05
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (73, 77, 5);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (74, 54, 5);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (75, 129, 5);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (76, 198, 5);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (77, 71, 5);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (78, 128, 5);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (79, 150, 5);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (80, 113, 5);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (81, 65, 5);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (82, 127, 5);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (83, 76, 5);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (84, 45, 5);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (85, 166, 5);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (86, 117, 5);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (87, 36, 5);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (88, 61, 5);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (89, 196, 5);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (90, 73, 5);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (91, 145, 5);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (92, 163, 5);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (93, 188, 5);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (94, 35, 5);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (95, 20, 5);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (96, 137, 5);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (97, 14, 5);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (98, 13, 5);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (99, 102, 5);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (100, 38, 5);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (101, 115, 5);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (102, 152, 5);

update tblTraineeList 
set status = '중도탈락', 
    day  = to_date('2024-02-13','yyyy-mm-dd')
where seq_traineeList = 73;

--1(30): 24/02/29
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (103, 114, 1);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (104, 16, 1);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (105, 106, 1);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (106, 21, 1);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (107, 179, 1);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (108, 99, 1);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (109, 49, 1);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (110, 171, 1);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (111, 32, 1);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (112, 170, 1);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (113, 238, 1);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (114, 72, 1);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (115, 122, 1);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (116, 183, 1);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (117, 86, 1);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (118, 8, 1);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (119, 60, 1);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (120, 43, 1);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (121, 233, 1);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (122, 138, 1);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (123, 53, 1);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (124, 139, 1);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (125, 89, 1);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (126, 107, 1);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (127, 180, 1);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (128, 176, 1);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (129, 104, 1);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (130, 44, 1);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (131, 52, 1);
insert into tblTraineeList (seq_traineeList, seq_trainee, seq_openCurriculum) 
values (132, 12, 1);

select * from tblTraineeList order by seq_traineelist;
commit;


--공지사항
insert into tblNotice(seq_notice,SEQ_OPENCURRICULUM,title,content) values(1,1,'AWS와 Docker를 활용한 Java Full-Stack 과정(A) 공지사항','안녕하세요, AWS와 Docker를 활용한 Java Full-Stack 과정(A) 수강생 여러분!
프로젝트 발표일이 7일 남았습니다. 이번 프로젝트에서도 열정적인 참여와 질문을 부탁드리며, 함께 더 나은 개발자가 되도록 노력해봅시다!');

insert into tblNotice(seq_notice,SEQ_OPENCURRICULUM,title,content) values(2,2,'AWS 클라우드를 활용한 Full-Stack 과정(A) 공지 사항','안녕하세요, AWS 클라우드를 활용한 Full-Stack 과정(A) 수강생 여러분!
우리의 수업이 곧 시작됩니다! 이번 수업은 AWS 클라우드를 중심으로 Full-Stack 개발의 핵심 개념과 실전 기술을 다룰 예정입니다.
모든 준비물을 확인하고, 수업에 참여할 준비를 완료해 주시기 바랍니다.
수업에 대한 추가 정보나 질문이 있으시면 언제든지 연락 주시기 바랍니다.
함께 흥미진진한 여정을 떠나봅시다!   감사합니다.');

insert into tblNotice(seq_notice,SEQ_OPENCURRICULUM,title,content) values(3,3,'AWS 클라우드와 Elasticsearch를 활용한 Java Full-Stack 과정(A) 공지 사항','안녕하세요, AWS 클라우드와 Elasticsearch를 활용한 Java Full-Stack 과정(A) 수강생 여러분!
저희의 수업이 다시 시작되었습니다! 이번 수업은 AWS 클라우드와 Elasticsearch를 중심으로 Java Full-Stack 개발의 핵심 개념과 실전 기술을 다룰 예정입니다
모든 준비물을 확인하고, 수업에 참여할 준비를 완료해 주시기 바랍니다.
수업에 대한 추가 정보나 질문이 있으시면 언제든지 연락 주시기 바랍니다.
함께 흥미진진한 여정을 떠나봅시다!');

insert into tblNotice(seq_notice,SEQ_OPENCURRICULUM,title,content) values(4,4,'자바(Java)기반 Web과 스마트플랫폼 Full-Stack 과정(A) 공지 사항','안녕하세요, 자바(Java)기반 Web과 스마트플랫폼 Full-Stack 과정(A) 수강생 여러분!
이번 강의에서는 최신 자바 기술을 활용하여 웹과 스마트플랫폼 개발에 대해 깊이 있게 다룰 예정입니다.
강의 시작 전에 준비사항을 확인해 주시기 바랍니다.
강의에 대한 추가 문의사항이나 궁금한 사항이 있으시면 언제든지 연락해 주세요.
함께 흥미로운 수업을 진행하며 성장하는 시간이 되길 기대합니다!
감사합니다.');

insert into tblNotice(seq_notice,SEQ_OPENCURRICULUM,title,content) values(5,5,'AWS와 Docker를 활용한 Java Full-Stack 과정(B) 공지사항','이 강의는 AWS 클라우드와 Docker를 중심으로 Java Full-Stack 개발의 핵심을 다룰 예정입니다.
비 전공자에게는 조금 쉽지 않은 수업이 될 예정이오니 성실한 출석을 통한 수업 참여를 부탁 드립니다.');

insert into tblNotice(seq_notice,SEQ_OPENCURRICULUM,title,content) values(6,6,'AWS 클라우드를 활용한 Full-Stack 과정(B)','다음주 부터는
HTML,CSS,JS를 통한 다양한 웹 기술을 배울 예정입니다. 교육생분들에게 이번 주말 푹 쉬시고 만반의 준비를 하셔서 오길 공지드립니다.');

insert into tblNotice(seq_notice,SEQ_OPENCURRICULUM,title,content) values(7,7,'AWS 클라우드와 Elasticsearch를 활용한 Java Full-Stack 과정(B) 공지사항','
안녕하세요 AWS 클라우드와 Elasticsearch를 활용한 Java Full-Stack 과정 교육생 여러분! 다음 프로젝트의 조 명단을 단톡방에 공지 드렸으니 확인 부탁드립니다.');
