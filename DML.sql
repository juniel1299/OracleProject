--강의실
insert into tblRoom values (1, '1 강의실', 30, 'SIST_1', 'sist34821');
insert into tblRoom values (2, '2 강의실', 30, 'SIST_2', 'sist34821');
insert into tblRoom values (3, '3 강의실', 30, 'SIST_3', 'sist34821');
insert into tblRoom values (4, '4 강의실', 26, 'SIST_4', 'sist34821');
insert into tblRoom values (5, '5 강의실', 26, 'SIST_5', 'sist34821');
insert into tblRoom values (6, '6 강의실', 26, 'SIST_6', 'sist34821');

--출결 상태
insert into tblAttendanceStatus values (1, '정상');
insert into tblAttendanceStatus values (2, '지각');
insert into tblAttendanceStatus values (3, '조퇴');
insert into tblAttendanceStatus values (4, '외출');
insert into tblAttendanceStatus values (5, '병가');
insert into tblAttendanceStatus values (6, '기타');
commit;

select * from tblcoursePeriod;

insert into tblcoursePeriod values (1, 165);
insert into tblcoursePeriod values (2, 180);
insert into tblcoursePeriod values (3, 210);

delete from tblCurriculum;

--교육과정
insert into tblCurriculum values (1, 2,'AWS와 Docker를 활용한 Java Full-Stack 과정(A)', 
'Java 언어를 기반으로 AWS와 Docker를 활용하여 Full-Stack 개발자를 양성하고 있습니다.');
insert into tblCurriculum values (2, 2,'AWS 클라우드를 활용한 Full-Stack 과정(A)', 
'Java 언어를 기반으로 AWS 클라우드를 활용할 수 있는 Full-Stack 개발자를 양성하고 있습니다.');
insert into tblCurriculum values (3, 1,'AWS 클라우드와 Elasticsearch를 활용한 Java Full-Stack 과정(A)', 
'Java 언어를 기반으로 AWS 클라우드와 Elasticsearch를 활용할 수 있는 Full-Stack 개발자를 양성하고 있습니다.');
insert into tblCurriculum values (4, 2,'자바(Java)기반 Web과 스마트플랫폼 Full-Stack 과정(A)', 
'Java 언어를 기반으로 스마트웹,콘텐츠 개발을 할 수 있는 Full-Stack 개발자를 양성하고 있습니다.');
insert into tblCurriculum values (5, 2,'AWS와 Docker를 활용한 Java Full-Stack 과정(B)', 
'Java 언어를 기반으로 AWS와 Docker를 활용하여 Full-Stack 개발자를 양성하고 있습니다.');
insert into tblCurriculum values (6, 2,'AWS 클라우드를 활용한 Full-Stack 과정(B)', 
'Java 언어를 기반으로 AWS 클라우드를 활용할 수 있는 Full-Stack 개발자를 양성하고 있습니다.');
insert into tblCurriculum values (7, 1,'AWS 클라우드와 Elasticsearch를 활용한 Java Full-Stack 과정(B)', 
'Java 언어를 기반으로 AWS 클라우드와 Elasticsearch를 활용할 수 있는 Full-Stack 개발자를 양성하고 있습니다.');
insert into tblCurriculum values (8, 2,'자바(Java)기반 Web과 스마트플랫폼 Full-Stack 과정(B)', 
'Java 언어를 기반으로 스마트웹,콘텐츠 개발을 할 수 있는 Full-Stack 개발자를 양성하고 있습니다.');
commit;

--강의 가능 과목 목록
insert into tblAvailableSubjectList values (1, 1, 1);
insert into tblAvailableSubjectList values (2, 2, 1);
insert into tblAvailableSubjectList values (3, 3, 1);
insert into tblAvailableSubjectList values (4, 4, 1);
insert into tblAvailableSubjectList values (5, 5, 1);
insert into tblAvailableSubjectList values (6, 6, 1);
insert into tblAvailableSubjectList values (7, 7, 1);
insert into tblAvailableSubjectList values (8, 8, 1);
insert into tblAvailableSubjectList values (9, 9, 1);
insert into tblAvailableSubjectList values (10, 10, 1);
insert into tblAvailableSubjectList values (11, 11, 1);
insert into tblAvailableSubjectList values (12, 12, 1);
insert into tblAvailableSubjectList values (13, 13, 1);
insert into tblAvailableSubjectList values (14, 14, 1);
insert into tblAvailableSubjectList values (15, 1, 2);
insert into tblAvailableSubjectList values (16, 2, 2);
insert into tblAvailableSubjectList values (17, 3, 2);
insert into tblAvailableSubjectList values (18, 4, 2);
insert into tblAvailableSubjectList values (19, 5, 2);
insert into tblAvailableSubjectList values (20, 6, 2);
insert into tblAvailableSubjectList values (21, 7, 2);
insert into tblAvailableSubjectList values (22, 8, 2);
insert into tblAvailableSubjectList values (23, 9, 2);
insert into tblAvailableSubjectList values (24, 10, 2);
insert into tblAvailableSubjectList values (25, 11, 2);
insert into tblAvailableSubjectList values (26, 12, 2);
insert into tblAvailableSubjectList values (27, 13, 2);
insert into tblAvailableSubjectList values (28, 14, 2);
insert into tblAvailableSubjectList values (29, 1, 3);
insert into tblAvailableSubjectList values (30, 2, 3);
insert into tblAvailableSubjectList values (31, 3, 3);
insert into tblAvailableSubjectList values (32, 4, 3);
insert into tblAvailableSubjectList values (33, 5, 3);
insert into tblAvailableSubjectList values (34, 6, 3);
insert into tblAvailableSubjectList values (35, 7, 3);
insert into tblAvailableSubjectList values (36, 8, 3);
insert into tblAvailableSubjectList values (37, 9, 3);
insert into tblAvailableSubjectList values (38, 10, 3);
insert into tblAvailableSubjectList values (39, 12, 3);
insert into tblAvailableSubjectList values (40, 13, 3);
insert into tblAvailableSubjectList values (41, 14, 3);
insert into tblAvailableSubjectList values (42, 1, 4);
insert into tblAvailableSubjectList values (43, 2, 4);
insert into tblAvailableSubjectList values (44, 3, 4);
insert into tblAvailableSubjectList values (45, 4, 4);
insert into tblAvailableSubjectList values (46, 5, 4);
insert into tblAvailableSubjectList values (47, 6, 4);
insert into tblAvailableSubjectList values (48, 7, 4);
insert into tblAvailableSubjectList values (49, 8, 4);
insert into tblAvailableSubjectList values (50, 9, 4);
insert into tblAvailableSubjectList values (51, 11, 4);
insert into tblAvailableSubjectList values (52, 12, 4);
insert into tblAvailableSubjectList values (53, 13, 4);
insert into tblAvailableSubjectList values (54, 14, 4);
insert into tblAvailableSubjectList values (55, 1, 5);
insert into tblAvailableSubjectList values (56, 2, 5);
insert into tblAvailableSubjectList values (57, 3, 5);
insert into tblAvailableSubjectList values (58, 4, 5);
insert into tblAvailableSubjectList values (59, 5, 5);
insert into tblAvailableSubjectList values (60, 6, 5);
insert into tblAvailableSubjectList values (61, 7, 5);
insert into tblAvailableSubjectList values (62, 12, 5);
insert into tblAvailableSubjectList values (63, 13, 5);
insert into tblAvailableSubjectList values (64, 14, 5);
insert into tblAvailableSubjectList values (65, 1, 6);
insert into tblAvailableSubjectList values (66, 2, 6);
insert into tblAvailableSubjectList values (67, 3, 6);
insert into tblAvailableSubjectList values (68, 4, 6);
insert into tblAvailableSubjectList values (69, 5, 6);
insert into tblAvailableSubjectList values (70, 6, 6);
insert into tblAvailableSubjectList values (71, 7, 6);
insert into tblAvailableSubjectList values (72, 8, 6);
insert into tblAvailableSubjectList values (73, 9, 6);
insert into tblAvailableSubjectList values (74, 11, 6);
insert into tblAvailableSubjectList values (75, 12, 6);
insert into tblAvailableSubjectList values (76, 13, 6);
insert into tblAvailableSubjectList values (77, 14, 6);
insert into tblAvailableSubjectList values (78, 1, 7);
insert into tblAvailableSubjectList values (79, 2, 7);
insert into tblAvailableSubjectList values (80, 3, 7);
insert into tblAvailableSubjectList values (81, 4, 7);
insert into tblAvailableSubjectList values (82, 5, 7);
insert into tblAvailableSubjectList values (83, 6, 7);
insert into tblAvailableSubjectList values (84, 7, 7);
insert into tblAvailableSubjectList values (85, 9, 7);
insert into tblAvailableSubjectList values (86, 11, 7);
insert into tblAvailableSubjectList values (87, 12, 7);
insert into tblAvailableSubjectList values (88, 1, 8);
insert into tblAvailableSubjectList values (89, 2, 8);
insert into tblAvailableSubjectList values (90, 3, 8);
insert into tblAvailableSubjectList values (91, 4, 8);
insert into tblAvailableSubjectList values (92, 5, 8);
insert into tblAvailableSubjectList values (93, 6, 8);
insert into tblAvailableSubjectList values (94, 7, 8);
insert into tblAvailableSubjectList values (95, 9, 8);
insert into tblAvailableSubjectList values (96, 11, 8);
insert into tblAvailableSubjectList values (97, 12, 8);
insert into tblAvailableSubjectList values (98, 1, 9);
insert into tblAvailableSubjectList values (99, 2, 9);
insert into tblAvailableSubjectList values (100, 3, 9);
insert into tblAvailableSubjectList values (101, 4, 9);
insert into tblAvailableSubjectList values (102, 5, 9);
insert into tblAvailableSubjectList values (103, 6, 9);
insert into tblAvailableSubjectList values (104, 7, 9);
insert into tblAvailableSubjectList values (105, 8, 9);
insert into tblAvailableSubjectList values (106, 11, 9);
insert into tblAvailableSubjectList values (107, 12, 9);
insert into tblAvailableSubjectList values (108, 1, 10);
insert into tblAvailableSubjectList values (109, 2, 10);
insert into tblAvailableSubjectList values (110, 3, 10);
insert into tblAvailableSubjectList values (111, 4, 10);
insert into tblAvailableSubjectList values (112, 5, 10);
insert into tblAvailableSubjectList values (113, 6, 10);
insert into tblAvailableSubjectList values (114, 7, 10);
insert into tblAvailableSubjectList values (115, 8, 10);
insert into tblAvailableSubjectList values (116, 9, 10);
insert into tblAvailableSubjectList values (117, 10, 10);
insert into tblAvailableSubjectList values (118, 11, 10);
insert into tblAvailableSubjectList values (119, 12, 10);
insert into tblAvailableSubjectList values (120, 15, 1);
insert into tblAvailableSubjectList values (121, 15, 2);
insert into tblAvailableSubjectList values (122, 15, 3);
insert into tblAvailableSubjectList values (123, 15, 4);
insert into tblAvailableSubjectList values (124, 15, 5);
insert into tblAvailableSubjectList values (125, 15, 6);
insert into tblAvailableSubjectList values (126, 15, 7);
insert into tblAvailableSubjectList values (127, 15, 8);
insert into tblAvailableSubjectList values (128, 15, 9);
insert into tblAvailableSubjectList values (129, 15, 10);
insert into tblAvailableSubjectList values (130, 16, 1);
insert into tblAvailableSubjectList values (131, 16, 2);
insert into tblAvailableSubjectList values (132, 16, 3);
insert into tblAvailableSubjectList values (133, 16, 4);
insert into tblAvailableSubjectList values (134, 16, 5);
insert into tblAvailableSubjectList values (135, 16, 6);
insert into tblAvailableSubjectList values (136, 16, 7);
insert into tblAvailableSubjectList values (137, 16, 8);
insert into tblAvailableSubjectList values (138, 16, 9);
insert into tblAvailableSubjectList values (139, 16, 10);
insert into tblAvailableSubjectList values (140, 17, 1);
insert into tblAvailableSubjectList values (141, 17, 2);
insert into tblAvailableSubjectList values (142, 17, 3);
insert into tblAvailableSubjectList values (143, 17, 4);
insert into tblAvailableSubjectList values (144, 17, 5);
insert into tblAvailableSubjectList values (145, 17, 6);
insert into tblAvailableSubjectList values (146, 17, 7);
insert into tblAvailableSubjectList values (147, 17, 8);
insert into tblAvailableSubjectList values (148, 17, 9);
insert into tblAvailableSubjectList values (149, 17, 10);


commit;
insert into tblSubject values (15, 'AWS', 15);
insert into tblSubject values (16, 'Docker', 15);
insert into tblSubject values (17, 'Kubernetes', 15);

--과목 목록
select * from tblSubject;
select * from tblCurriculum;
select * from tblAvailableSubjectList;

insert into tblSubjectList values (1, 1, 1);
insert into tblSubjectList values (2, 2, 1);
insert into tblSubjectList values (3, 3, 1);
insert into tblSubjectList values (4, 5, 1);
insert into tblSubjectList values (5, 16, 1);
insert into tblSubjectList values (6, 17, 1);
insert into tblSubjectList values (7, 15, 1);
insert into tblSubjectList values (8, 14, 1);

insert into tblSubjectList values (9, 1, 2);
insert into tblSubjectList values (10, 2, 2);
insert into tblSubjectList values (11, 3, 2);
insert into tblSubjectList values (12, 4, 2);
insert into tblSubjectList values (13, 16, 2);
insert into tblSubjectList values (14, 17, 2);
insert into tblSubjectList values (15, 15, 2);
insert into tblSubjectList values (16, 14, 2);

insert into tblSubjectList values (17, 1, 3);
insert into tblSubjectList values (18, 2, 3);
insert into tblSubjectList values (19, 3, 3);
insert into tblSubjectList values (20, 4, 3);
insert into tblSubjectList values (21, 12, 3);
insert into tblSubjectList values (22, 14, 3);
insert into tblSubjectList values (23, 15, 3);

insert into tblSubjectList values (24, 1, 4);
insert into tblSubjectList values (25, 2, 4);
insert into tblSubjectList values (26, 3, 4);
insert into tblSubjectList values (27, 4, 4);
insert into tblSubjectList values (28, 5, 4);
insert into tblSubjectList values (29, 13, 4);
insert into tblSubjectList values (30, 14, 4);

insert into tblSubjectList values (31, 1, 5);
insert into tblSubjectList values (32, 2, 5);
insert into tblSubjectList values (33, 3, 5);
insert into tblSubjectList values (34, 5, 5);
insert into tblSubjectList values (35, 16, 5);
insert into tblSubjectList values (36, 17, 5);
insert into tblSubjectList values (37, 15, 5);
insert into tblSubjectList values (38, 14, 5);

insert into tblSubjectList values (39, 1, 6);
insert into tblSubjectList values (40, 2, 6);
insert into tblSubjectList values (41, 3, 6);
insert into tblSubjectList values (42, 4, 6);
insert into tblSubjectList values (43, 16, 6);
insert into tblSubjectList values (44, 17, 6);
insert into tblSubjectList values (45, 15, 6);
insert into tblSubjectList values (46, 14, 6);

insert into tblSubjectList values (47, 1, 7);
insert into tblSubjectList values (48, 2, 7);
insert into tblSubjectList values (49, 3, 7);
insert into tblSubjectList values (50, 4, 7);
insert into tblSubjectList values (51, 12, 7);
insert into tblSubjectList values (52, 14, 7);
insert into tblSubjectList values (53, 15, 7);

insert into tblSubjectList values (54, 1, 8);
insert into tblSubjectList values (55, 2, 8);
insert into tblSubjectList values (56, 3, 8);
insert into tblSubjectList values (57, 4, 8);
insert into tblSubjectList values (58, 5, 8);
insert into tblSubjectList values (59, 13, 8);
insert into tblSubjectList values (60, 14, 8);
commit;