--시험 일정
INSERT INTO tblTestSchedule(seq_testSchedule,seq_subjectList,writtenDate,practicalDate) 
VALUES (1, 47, TO_DATE('2023-10-03', 'YYYY-MM-DD'), TO_DATE('2023-10-04', 'YYYY-MM-DD'));
INSERT INTO tblTestSchedule(seq_testSchedule,seq_subjectList,writtenDate,practicalDate) 
VALUES (2, 48, TO_DATE('2023-11-01', 'YYYY-MM-DD'), TO_DATE('2023-11-02', 'YYYY-MM-DD'));
INSERT INTO tblTestSchedule(seq_testSchedule,seq_subjectList,writtenDate,practicalDate) 
VALUES (3, 49, TO_DATE('2023-11-30', 'YYYY-MM-DD'), TO_DATE('2023-12-01', 'YYYY-MM-DD'));
INSERT INTO tblTestSchedule(seq_testSchedule,seq_subjectList,writtenDate,practicalDate) 
VALUES (4, 50, TO_DATE('2023-12-28', 'YYYY-MM-DD'), TO_DATE('2023-12-29', 'YYYY-MM-DD'));
INSERT INTO tblTestSchedule(seq_testSchedule,seq_subjectList,writtenDate,practicalDate) 
VALUES (5, 51, TO_DATE('2024-01-15', 'YYYY-MM-DD'), TO_DATE('2024-01-16', 'YYYY-MM-DD'));
INSERT INTO tblTestSchedule(seq_testSchedule,seq_subjectList,writtenDate,practicalDate) 
VALUES (6, 52, TO_DATE('2024-01-30', 'YYYY-MM-DD'), TO_DATE('2024-01-31', 'YYYY-MM-DD'));
INSERT INTO tblTestSchedule(seq_testSchedule,seq_subjectList,writtenDate,practicalDate) 
VALUES (7, 53, TO_DATE('2024-02-13', 'YYYY-MM-DD'), TO_DATE('2024-02-14', 'YYYY-MM-DD'));
INSERT INTO tblTestSchedule(seq_testSchedule,seq_subjectList,writtenDate,practicalDate) 
VALUES (8, 17, TO_DATE('2024-01-29', 'YYYY-MM-DD'), TO_DATE('2024-01-30', 'YYYY-MM-DD'));
INSERT INTO tblTestSchedule(seq_testSchedule,seq_subjectList,writtenDate,practicalDate) 
VALUES (9, 18, TO_DATE('2024-02-28', 'YYYY-MM-DD'), TO_DATE('2024-02-29', 'YYYY-MM-DD'));
INSERT INTO tblTestSchedule(seq_testSchedule,seq_subjectList,writtenDate,practicalDate) 
VALUES (10, 24, TO_DATE('2024-01-24', 'YYYY-MM-DD'), TO_DATE('2024-01-25', 'YYYY-MM-DD'));
INSERT INTO tblTestSchedule(seq_testSchedule,seq_subjectList,writtenDate,practicalDate) 
VALUES (11, 25, TO_DATE('2024-02-22', 'YYYY-MM-DD'), TO_DATE('2024-02-23', 'YYYY-MM-DD'));
INSERT INTO tblTestSchedule(seq_testSchedule,seq_subjectList,writtenDate,practicalDate) 
VALUES (12, 31, TO_DATE('2024-02-05', 'YYYY-MM-DD'), TO_DATE('2024-02-06', 'YYYY-MM-DD'));

-- 면접 결과
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (1 , 1, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (2 , 2, '불합격', '면접 불참' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (3 , 3, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (4 , 4, '불합격', '학습의지가 다소 부족해보임.' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (5 , 5, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (6 , 6, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (7 , 7, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (8 , 8, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (9 , 9, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (10 , 10, '불합격', '면접 불참' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (11 , 11, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (12 , 12, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (13 , 13, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (14 , 14, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (15 , 15, '불합격', '면접 불참' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (16 , 16, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (17 , 17, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (18 , 18, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (19 , 19, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (20 , 20, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (21 , 21, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (22 , 22, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (23 , 23, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (24 , 24, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (25 , 25, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (26 , 26, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (27 , 27, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (28 , 28, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (29 , 29, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (30 , 30, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (31 , 31, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (32 , 32, '불합격', '학습의지가 다소 부족해보임.' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (33 , 33, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (34 , 34, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (35 , 35, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (36 , 36, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (37 , 37, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (38 , 38, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (39 , 39, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (40 , 40, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (41 , 41, '불합격', '면접 불참' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (42 , 42, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (43 , 43, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (44 , 44, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (45 , 45, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (46 , 46, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (47 , 47, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (48 , 48, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (49 , 49, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (50 , 50, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (51 , 51, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (52 , 52, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (53 , 53, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (54 , 54, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (55 , 55, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (56 , 56, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (57 , 57, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (58 , 58, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (59 , 59, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (60 , 60, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (61 , 61, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (62 , 62, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (63 , 63, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (64 , 64, '불합격', '면접 불참' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (65 , 65, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (66 , 66, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (67 , 67, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (68 , 68, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (69 , 69, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (70 , 70, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (71 , 71, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (72 , 72, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (73 , 73, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (74 , 74, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (75 , 75, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (76 , 76, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (77 , 77, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (78 , 78, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (79 , 79, '불합격', '면접 불참' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (80 , 80, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (81 , 81, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (82 , 82, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (83 , 83, '불합격', '면접 불참' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (84 , 84, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (85 , 85, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (86 , 86, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (87 , 87, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (88 , 88, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (89 , 89, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (90 , 90, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (91 , 91, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (92 , 92, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (93 , 93, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (94 , 94, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (95 , 95, '불합격', '면접 불참' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (96 , 96, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (97 , 97, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (98 , 98, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (99 , 99, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (100 , 100, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (101 , 101, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (102 , 102, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (103 , 103, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (104 , 104, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (105 , 105, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (106 , 106, '불합격', '면접 불참' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (107 , 107, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (108 , 108, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (109 , 109, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (110 , 110, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (111 , 111, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (112 , 112, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (113 , 113, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (114 , 114, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (115 , 115, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (116 , 116, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (117 , 117, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (118 , 118, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (119 , 119, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (120 , 120, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (121 , 121, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (122 , 122, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (123 , 123, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (124 , 124, '불합격', '면접 불참' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (125 , 125, '불합격', '다소 의지가 약함.' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (126 , 126, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (127 , 127, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (128 , 128, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (129 , 129, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (130 , 130, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (131 , 131, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (132 , 132, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (133 , 133, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (134 , 134, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (135 , 135, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (136 , 136, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (137 , 137, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (138 , 138, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (139 , 139, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (140 , 140, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (141 , 141, '불합격', '면접 불참' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (142 , 142, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (143 , 143, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (144 , 144, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (145 , 145, '불합격', '면접 불참' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (146 , 146, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (147 , 147, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (148 , 148, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (149 , 149, '합격', '' );
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (150 , 150, '합격', '' );


--개설 교육과정
--seq_curriculumProgress (1: 예정, 2: 진행, 3: 종료)
insert into tblOpenCurriculum
(seq_openCurriculum, seq_curriculum, seq_room, seq_teacher, seq_curriculumProgress, startDate, endDate)
values (1, 1, 1, 1, 2, to_date('2024-02-29' ,'yyyy-mm-dd'), to_date('2024-08-26','yyyy-mm-dd'));   -- 진행
insert into tblOpenCurriculum
(seq_openCurriculum, seq_curriculum, seq_room, seq_teacher, seq_curriculumProgress, startDate, endDate)
values (2, 2, 2, 2, 1, to_date('2024-03-07' ,'yyyy-mm-dd'), to_date('2024-09-02','yyyy-mm-dd'));   -- 예정
insert into tblOpenCurriculum
(seq_openCurriculum, seq_curriculum, seq_room, seq_teacher, seq_curriculumProgress, startDate, endDate)
values (3, 3, 4, 4, 2, to_date('2023-12-29' ,'yyyy-mm-dd'), to_date('2024-06-10','yyyy-mm-dd'));   -- 진행
insert into tblOpenCurriculum
(seq_openCurriculum, seq_curriculum, seq_room, seq_teacher, seq_curriculumProgress, startDate, endDate)
values (4, 4, 6, 7, 2, to_date('2023-12-26' ,'yyyy-mm-dd'), to_date('2024-06-22','yyyy-mm-dd'));   -- 진행
insert into tblOpenCurriculum
(seq_openCurriculum, seq_curriculum, seq_room, seq_teacher, seq_curriculumProgress, startDate, endDate)
values (5, 5, 3, 10, 2, to_date('2024-01-05' ,'yyyy-mm-dd'), to_date('2024-07-02','yyyy-mm-dd'));  -- 진행
insert into tblOpenCurriculum
(seq_openCurriculum, seq_curriculum, seq_room, seq_teacher, seq_curriculumProgress, startDate, endDate)
values (6, 6, 5, 9, 1, to_date('2024-03-11' ,'yyyy-mm-dd'), to_date('2024-09-06','yyyy-mm-dd'));   -- 예정
insert into tblOpenCurriculum
(seq_openCurriculum, seq_curriculum, seq_room, seq_teacher, seq_curriculumProgress, startDate, endDate)
values (7, 7, 5, 8, 3, to_date('2023-09-04' ,'yyyy-mm-dd'), to_date('2024-02-15','yyyy-mm-dd'));   -- 종료


--과목 목록
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

commit;
