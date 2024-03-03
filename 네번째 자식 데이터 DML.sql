--출결인정서류


--출석


--사물함


--취업 현황
insert into tblEmploymentStatus 
(seq_employmentStatus, seq_traineeList, status, city, company, field, salary)
values (1, 1, '취업', '서울', '금호타이어', '프론트엔드', 36000000);
insert into tblEmploymentStatus 
(seq_employmentStatus, seq_traineeList, status, city, company, field, salary)
values (2, 2, '미취업', null, null, null, null);
insert into tblEmploymentStatus 
(seq_employmentStatus, seq_traineeList, status, city, company, field, salary)
values (3, 3,'취업', '부산', '롯데자이언츠', '백엔드', 32000000);
insert into tblEmploymentStatus 
(seq_employmentStatus, seq_traineeList, status, city, company, field, salary)
values (4, 4, '취업', '대구', '(주)티멕스소프트', '소프트웨어개발', 40000000);
insert into tblEmploymentStatus 
(seq_employmentStatus, seq_traineeList, status, city, company, field, salary)
values (5, 5, '취업', '인천', '피에프컨설팅', '프론트엔드', 35000000);
insert into tblEmploymentStatus 
(seq_employmentStatus, seq_traineeList, status, city, company, field, salary)
values (6, 6, '취업', '대전', '(주)위즈베라', '응용소프트웨어개발', 31000000);
insert into tblEmploymentStatus 
(seq_employmentStatus, seq_traineeList, status, city, company, field, salary)
values (7, 7, '취업', '광주', '이노와이어리스', '서버 S/W 개발', 33000000);
insert into tblEmploymentStatus 
(seq_employmentStatus, seq_traineeList, status, city, company, field, salary)
values (8, 8, '취업', '수원', '(주)텐노드솔루션', '응용 소프트웨어 개발', 34500000);
insert into tblEmploymentStatus 
(seq_employmentStatus, seq_traineeList, status, city, company, field, salary)
values (9, 9, '취업', '울산', '㈜노버스메이', '응용 소프트웨어 개발', 37000000);
insert into tblEmploymentStatus 
(seq_employmentStatus, seq_traineeList, status, city, company, field, salary)
values (10, 10, '미취업', null, null, null, null);
insert into tblEmploymentStatus 
(seq_employmentStatus, seq_traineeList, status, city, company, field, salary)
values (11, 11, '취업', '창원', 'AK아이에스㈜', 'S/W개발', 35500000);
insert into tblEmploymentStatus 
(seq_employmentStatus, seq_traineeList, status, city, company, field, salary)
values (12, 12, '취업', '고양', '응용 소프트웨어 개발', '응용 소프트웨어 개발', 37000000);
insert into tblEmploymentStatus 
(seq_employmentStatus, seq_traineeList, status, city, company, field, salary)
values (13, 13, '미취업', null, null, null, null);
insert into tblEmploymentStatus 
(seq_employmentStatus, seq_traineeList, status, city, company, field, salary)
values (14, 14, '취업', '성남', '가인정보처리㈜', 'SI', 33000000);
insert into tblEmploymentStatus 
(seq_employmentStatus, seq_traineeList, status, city, company, field, salary)
values (15, 15, '취업', '용인', '(주)미래테크놀로지', '서버보안', 33500000);
insert into tblEmploymentStatus 
(seq_employmentStatus, seq_traineeList, status, city, company, field, salary)
values (16, 16, '취업', '화성', '모바일엔트로피', 'S/W 개발', 35500000);
insert into tblEmploymentStatus 
(seq_employmentStatus, seq_traineeList, status, city, company, field, salary)
values (17, 17, '취업', '양산', '(주)써티웨어', 'S/W 개발', 32700000);
insert into tblEmploymentStatus 
(seq_employmentStatus, seq_traineeList, status, city, company, field, salary)
values (18, 18, '미취업', null, null, null, null);
insert into tblEmploymentStatus 
(seq_employmentStatus, seq_traineeList, status, city, company, field, salary)
values (19, 19, '취업', '천안', '대원씨앤씨', '응용 소프트웨어 개발', 33000000);
insert into tblEmploymentStatus 
(seq_employmentStatus, seq_traineeList, status, city, company, field, salary)
values (20, 20, '취업', '구리', '엠큐닉', '응용 소프트웨어 개발', 34000000);

--온라인 강의 목록
insert into tblOnlineCourseList
(seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values (1, 21, 1, 4,'수강 완료');
insert into tblOnlineCourseList
(seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values (2, 21, 2, 4,'수강 완료');
insert into tblOnlineCourseList
(seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values (3, 21, 3, 4,'수강 미완료');
insert into tblOnlineCourseList
(seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values (4, 21, 4, 4,'수강 미완료');
insert into tblOnlineCourseList
(seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values (5, 21, 5, 4,'수강 미완료');
insert into tblOnlineCourseList
(seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values (6, 21, 6, 4,'수강 미완료');
insert into tblOnlineCourseList
(seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values (7, 21, 7, 4,'수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values (8, 22, 1, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (9, 22, 2, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (10, 22, 3, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (11, 22, 4, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (12, 22, 5, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (13, 22, 6, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (14, 22, 7, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (15, 23, 1, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (16, 23, 2, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (17, 23, 3, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (18, 23, 4, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (19, 23, 5, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (20, 23, 6, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (21, 23, 7, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (22, 24, 1, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (23, 24, 2, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (24, 24, 3, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (25, 24, 4, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (26, 24, 5, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (27, 24, 6, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (28, 24, 7, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (29, 25, 1, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (30, 25, 2, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (31, 25, 3, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (32, 25, 4, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (33, 25, 5, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (34, 25, 6, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (35, 25, 7, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (36, 26, 1, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (37, 26, 2, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (38, 26, 3, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (39, 26, 4, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (40, 26, 5, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (41, 26, 6, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (42, 26, 7, 4, '수강 미완료');

insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (43, 27, 1, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (44, 27, 2, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (45, 27, 3, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (46, 27, 4, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (47, 27, 5, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (48, 27, 6, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values (49, 27, 7, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(50, 28, 1, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(51, 28, 2, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(52, 28, 3, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(53, 28, 4, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(54, 28, 5, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(55, 28, 6, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(56, 28, 7, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(57, 29, 1, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(58, 29, 2, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(59, 29, 3, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(60, 29, 4, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(61, 29, 5, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(62, 29, 6, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(63, 29, 7, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(64, 30, 1, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(65, 30, 2, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(66, 30, 3, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(67, 30, 4, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(68, 30, 5, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(69, 30, 6, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(70, 30, 7, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(71, 31, 1, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(72, 31, 2, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(73, 31, 3, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(74, 31, 4, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(75, 31, 5, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(76, 31, 6, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(77, 31, 7, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(78, 31, 1, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(79, 31, 2, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(80, 31, 3, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(81, 31, 4, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(82, 31, 5, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(83, 31, 6, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(84, 31, 7, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(85, 32, 1, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(86, 32, 2, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(87, 32, 3, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(88, 32, 4, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(89, 32, 5, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(90, 32, 6, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(91, 32, 7, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(92, 33, 1, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(93, 33, 2, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(94, 33, 3, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(95, 33, 4, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(96, 33, 5, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(97, 33, 6, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(98, 33, 7, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(99, 34, 1, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(100, 34, 2, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(101, 34, 3, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(102, 34, 4, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(103, 34, 5, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(104, 34, 6, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(105, 34, 7, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(106, 35, 1, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(107, 35, 2, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(108, 35, 3, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(109, 35, 4, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(110, 35, 5, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(111, 35, 6, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(112, 35, 7, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(113, 36, 1, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(114, 36, 2, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(115, 36, 3, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(116, 36, 4, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(117, 36, 5, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(118, 36, 6, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(119, 36, 7, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(120, 37, 1, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(121, 37, 2, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(122, 37, 3, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(123, 37, 4, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(124, 37, 5, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(125, 37, 6, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(126, 37, 7, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(127, 38, 1, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(128, 38, 2, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(129, 38, 3, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(130, 38, 4, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(131, 38, 5, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(132, 38, 6, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(133, 38, 7, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(134, 39, 1, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(135, 39, 2, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(136, 39, 3, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(137, 39, 4, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(138, 39, 5, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(139, 39, 6, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(140, 39, 7, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(141, 40, 1, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(142, 40, 2, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(143, 40, 3, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(144, 40, 4, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(145, 40, 5, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(146, 40, 6, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(147, 40, 7, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(148, 41, 1, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(149, 41, 2, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(150, 41, 3, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(151, 41, 4, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(152, 41, 5, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(153, 41, 6, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(154, 41, 7, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(155, 42, 1, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(156, 42, 2, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(157, 42, 3, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(158, 42, 4, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(159, 42, 5, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(160, 42, 6, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(161, 42, 7, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(162, 43, 1, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(163, 43, 2, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(164, 43, 3, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(165, 43, 4, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(166, 43, 5, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(167, 43, 6, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(168, 43, 7, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(169, 44, 1, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(170, 44, 2, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(171, 44, 3, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(172, 44, 4, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(173, 44, 5, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(174, 44, 6, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(175, 44, 7, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(176, 45, 1, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(177, 45, 2, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(178, 45, 3, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(179, 45, 4, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(180, 45, 5, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(181, 45, 6, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(182, 45, 7, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(183, 46, 1, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(184, 46, 2, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(185, 46, 3, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(186, 46, 4, 4, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(187, 46, 5, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(188, 46, 6, 4, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(189, 46, 7, 4, '수강 완료');

select * from tblOnlineCourseList;

insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(190, 47, 1, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(191, 47, 2, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(192, 47, 3, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(193, 47, 4, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(194, 47, 5, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(195, 47, 6, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(196, 47, 7, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(197, 48, 1, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(198, 48, 2, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(199, 48, 3, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(200, 48, 4, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(201, 48, 5, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(202, 48, 6, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(203, 48, 7, 3, '수강 미완료');

insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(204, 49, 1, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(205, 49, 2, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(206, 49, 3, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(207, 49, 4, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(208, 49, 5, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(209, 49, 6, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(210, 49, 7, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(211, 50, 1, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(212, 50, 2, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(213, 50, 3, 3, '수강 미완료');

insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(214, 50, 4, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(215, 50, 5, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(216, 50, 6, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(217, 50, 7, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(218, 51, 1, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(219, 51, 2, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(220, 51, 3, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(221, 51, 4, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(222, 51, 5, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(223, 51, 6, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(224, 51, 7, 3, '수강 완료');

insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(225, 52, 1, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(226, 52, 2, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(227, 52, 3, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(228, 52, 4, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(229, 52, 5, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(230, 52, 6, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(231, 52, 7, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(232, 53, 1, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(233, 53, 2, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(234, 53, 3, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(235, 53, 4, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(236, 53, 5, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(237, 53, 6, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(238, 53, 7, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(239, 54, 1, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(240, 54, 2, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(241, 54, 3, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(242, 54, 4, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(243, 54, 5, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(244, 54, 6, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(245, 54, 7, 3, '수강 완료');

insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(246, 55, 1, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(247, 55, 2, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(248, 55, 3, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(249, 55, 4, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(250, 55, 5, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(251, 55, 6, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(252, 55, 7, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(253, 56, 1, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(254, 56, 2, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(255, 56, 3, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(256, 56, 4, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(257, 56, 5, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(258, 56, 6, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(259, 56, 7, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(260, 57, 1, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(261, 57, 2, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(262, 57, 3, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(263, 57, 4, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(264, 57, 5, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(265, 57, 6, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(266, 57, 7, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(267, 58, 1, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(268, 58, 2, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(269, 58, 3, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(270, 58, 4, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(271, 58, 5, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(272, 58, 6, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(273, 58, 7, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(274, 59, 1, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(275, 59, 2, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(276, 59, 3, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(277, 59, 4, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(278, 59, 5, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(279, 59, 6, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(280, 59, 7, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(281, 60, 1, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(282, 60, 2, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(283, 60, 3, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(284, 60, 4, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(285, 60, 5, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(286, 60, 6, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(287, 60, 7, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(288, 61, 1, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(289, 61, 2, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(290, 61, 3, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(291, 61, 4, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(292, 61, 5, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(293, 61, 6, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(294, 61, 7, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(295, 62, 1, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(296, 62, 2, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(297, 62, 3, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(298, 62, 4, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(299, 62, 5, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(300, 62, 6, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(301, 62, 7, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(302, 63, 1, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(303, 63, 2, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(304, 63, 3, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(305, 63, 4, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(306, 63, 5, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(307, 63, 6, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(308, 63, 7, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(309, 64, 1, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(310, 64, 2, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(311, 64, 3, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(312, 64, 4, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(313, 64, 5, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(314, 64, 6, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(315, 64, 7, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(316, 65, 1, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(317, 65, 2, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(318, 65, 3, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(319, 65, 4, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(320, 65, 5, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(321, 65, 6, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(322, 65, 7, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(323, 66, 1, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(324, 66, 2, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(325, 66, 3, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(326, 66, 4, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(327, 66, 5, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(328, 66, 6, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(329, 66, 7, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(330, 67, 1, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(331, 67, 2, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(332, 67, 3, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(333, 67, 4, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(334, 67, 5, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(335, 67, 6, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(336, 67, 7, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(337, 68, 1, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(338, 68, 2, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(339, 68, 3, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(340, 68, 4, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(341, 68, 5, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(342, 68, 6, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(343, 68, 7, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(344, 69, 1, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(345, 69, 2, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(346, 69, 3, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(347, 69, 4, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(348, 69, 5, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(349, 69, 6, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(350, 69, 7, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(351, 70, 1, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(352, 70, 2, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(353, 70, 3, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(354, 70, 4, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(355, 70, 5, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(356, 70, 6, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(357, 70, 7, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(358, 71, 1, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(359, 71, 2, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(360, 71, 3, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(361, 71, 4, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(362, 71, 5, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(363, 71, 6, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(364, 71, 7, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(365, 72, 1, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(366, 72, 2, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(367, 72, 3, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(368, 72, 4, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(369, 72, 5, 3, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(370, 72, 6, 3, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(371, 72, 7, 3, '수강 미완료');

insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(372, 73, 1, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(373, 73, 2, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(374, 73, 3, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(375, 73, 4, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(376, 73, 5, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(377, 73, 6, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(378, 73, 7, 5, '수강 완료');

insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(379, 74, 1, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(380, 74, 2, 5, '수강 미완료');

insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(381, 74, 3, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(382, 74, 4, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(383, 74, 5, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(384, 74, 6, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(385, 74, 7, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(386, 75, 1, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(387, 75, 2, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(388, 75, 3, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(389, 75, 4, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(390, 75, 5, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(391, 75, 6, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(392, 75, 7, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(393, 76, 1, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(394, 76, 2, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(395, 76, 3, 5, '수강 완료');

insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(396, 76, 4, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(397, 76, 5, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(398, 76, 6, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(399, 76, 7, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(400, 77, 1, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(401, 77, 2, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(402, 77, 3, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(403, 77, 4, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(404, 77, 5, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(405, 77, 6, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(406, 77, 7, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(407, 78, 1, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(408, 78, 2, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(409, 78, 3, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(410, 78, 4, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(411, 78, 5, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(412, 78, 6, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(413, 78, 7, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(414, 79, 1, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(415, 79, 2, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(416, 79, 3, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(417, 79, 4, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(418, 79, 5, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(419, 79, 6, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(420, 79, 7, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(421, 80, 1, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(422, 80, 2, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(423, 80, 3, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(424, 80, 4, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(425, 80, 5, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(426, 80, 6, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(427, 80, 7, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(428, 81, 1, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(429, 81, 2, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(430, 81, 3, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(431, 81, 4, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(432, 81, 5, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(433, 81, 6, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(434, 81, 7, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(435, 82, 1, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(436, 82, 2, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(437, 82, 3, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(438, 82, 4, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(439, 82, 5, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(440, 82, 6, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(441, 82, 7, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(442, 83, 1, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(443, 83, 2, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(444, 83, 3, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(445, 83, 4, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(446, 83, 5, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(447, 83, 6, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(448, 83, 7, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(449, 84, 1, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(450, 84, 2, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(451, 84, 3, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(452, 84, 4, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(453, 84, 5, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(454, 84, 6, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(455, 84, 7, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(456, 85, 1, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(457, 85, 2, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(458, 85, 3, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(459, 85, 4, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(460, 85, 5, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(461, 85, 6, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(462, 85, 7, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(463, 86, 1, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(464, 86, 2, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(465, 86, 3, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(466, 86, 4, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(467, 86, 5, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(468, 86, 6, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(469, 86, 7, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(470, 87, 1, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(471, 87, 2, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(472, 87, 3, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(473, 87, 4, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(474, 87, 5, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(475, 87, 6, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(476, 87, 7, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(477, 88, 1, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(478, 88, 2, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(479, 88, 3, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(480, 88, 4, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(481, 88, 5, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(482, 88, 6, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(483, 88, 7, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(484, 89, 1, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(485, 89, 2, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(486, 89, 3, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(487, 89, 4, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(488, 89, 5, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(489, 89, 6, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(490, 89, 7, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(491, 90, 1, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(492, 90, 2, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(493, 90, 3, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(494, 90, 4, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(495, 90, 5, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(496, 90, 6, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(497, 90, 7, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(498, 91, 1, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(499, 91, 2, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(500, 91, 3, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(501, 91, 4, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(502, 91, 5, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(503, 91, 6, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(504, 91, 7, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(505, 92, 1, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(506, 92, 2, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(507, 92, 3, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(508, 92, 4, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(509, 92, 5, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(510, 92, 6, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(511, 92, 7, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(512, 93, 1, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(513, 93, 2, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(514, 93, 3, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(515, 93, 4, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(516, 93, 5, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(517, 93, 6, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(518, 93, 7, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(519, 94, 1, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(520, 94, 2, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(521, 94, 3, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(522, 94, 4, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(523, 94, 5, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(524, 94, 6, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(525, 94, 7, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(526, 95, 1, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(527, 95, 2, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(528, 95, 3, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(529, 95, 4, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(530, 95, 5, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(531, 95, 6, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(532, 95, 7, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(533, 96, 1, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(534, 96, 2, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(535, 96, 3, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(536, 96, 4, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(537, 96, 5, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(538, 96, 6, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(539, 96, 7, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(540, 97, 1, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(541, 97, 2, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(542, 97, 3, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(543, 97, 4, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(544, 97, 5, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(545, 97, 6, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(546, 97, 7, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(547, 98, 1, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(548, 98, 2, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(549, 98, 3, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(550, 98, 4, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(551, 98, 5, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(552, 98, 6, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(553, 98, 7, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(554, 99, 1, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(555, 99, 2, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(556, 99, 3, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(557, 99, 4, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(558, 99, 5, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(559, 99, 6, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(560, 99, 7, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(561, 100, 1, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(562, 100, 2, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(563, 100, 3, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(564, 100, 4, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(565, 100, 5, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(566, 100, 6, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(567, 100, 7, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(568, 101, 1, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(569, 101, 2, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(570, 101, 3, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(571, 101, 4, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(572, 101, 5, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(573, 101, 6, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(574, 101, 7, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(575, 102, 1, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(576, 102, 2, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(577, 102, 3, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(578, 102, 4, 5, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(579, 102, 5, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(580, 102, 6, 5, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(581, 102, 7, 5, '수강 완료');

insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(582, 103, 1, 1, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(583, 103, 2, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(584, 103, 3, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(585, 103, 4, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(586, 103, 5, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(587, 103, 6, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(588, 103, 7, 1, '수강 미완료');

insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(589, 104, 1, 1, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(590, 104, 2, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(591, 104, 3, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(592, 104, 4, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(593, 104, 5, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(594, 104, 6, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(595, 104, 7, 1, '수강 미완료');

insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(596, 105, 1, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(597, 105, 2, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(598, 105, 3, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(599, 105, 4, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(600, 105, 5, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(601, 105, 6, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(602, 105, 7, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(603, 106, 1, 1, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(604, 106, 2, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(605, 106, 3, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(606, 106, 4, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(607, 106, 5, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(608, 106, 6, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(609, 106, 7, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(610, 107, 1, 1, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(611, 107, 2, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(612, 107, 3, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(613, 107, 4, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(614, 107, 5, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(615, 107, 6, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(616, 107, 7, 1, '수강 미완료');

insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(617, 108, 1, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(618, 108, 2, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(619, 108, 3, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(620, 108, 4, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(621, 108, 5, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(622, 108, 6, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(623, 108, 7, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(624, 109, 1, 1, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(625, 109, 2, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(626, 109, 3, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(627, 109, 4, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(628, 109, 5, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(629, 109, 6, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(630, 109, 7, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(631, 110, 1, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(632, 110, 2, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(633, 110, 3, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(634, 110, 4, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(635, 110, 5, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(636, 110, 6, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(637, 110, 7, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(638, 111, 1, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(639, 111, 2, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(640, 111, 3, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(641, 111, 4, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(642, 111, 5, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(643, 111, 6, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(644, 111, 7, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(645, 112, 1, 1, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(646, 112, 2, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(647, 112, 3, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(648, 112, 4, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(649, 112, 5, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(650, 112, 6, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(651, 112, 7, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(652, 113, 1, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(653, 113, 2, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(654, 113, 3, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(655, 113, 4, 1, '수강 미완료');

insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(656, 113, 5, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(657, 113, 6, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(658, 113, 7, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(659, 114, 1, 1, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(660, 114, 2, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(661, 114, 3, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(662, 114, 4, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(663, 114, 5, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(664, 114, 6, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(665, 114, 7, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(666, 115, 1, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(667, 115, 2, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(668, 115, 3, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(669, 115, 4, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(670, 115, 5, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(671, 115, 6, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(672, 115, 7, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(673, 116, 1, 1, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(674, 116, 2, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(675, 116, 3, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(676, 116, 4, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(677, 116, 5, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(678, 116, 6, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(679, 116, 7, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(680, 117, 1, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(681, 117, 2, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(682, 117, 3, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(683, 117, 4, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(684, 117, 5, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(685, 117, 6, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(686, 117, 7, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(687, 118, 1, 1, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(688, 118, 2, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(689, 118, 3, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(690, 118, 4, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(691, 118, 5, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(692, 118, 6, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(693, 118, 7, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(694, 119, 1, 1, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(695, 119, 2, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(696, 119, 3, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(697, 119, 4, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(698, 119, 5, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(699, 119, 6, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(700, 119, 7, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(701, 120, 1, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(702, 120, 2, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(703, 120, 3, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(704, 120, 4, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(705, 120, 5, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(706, 120, 6, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(707, 120, 7, 1, '수강 미완료');

insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(708, 121, 1, 1, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(709, 121, 2, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(710, 121, 3, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(711, 121, 4, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(712, 121, 5, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(713, 121, 6, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(714, 121, 7, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(715, 122, 1, 1, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(716, 122, 2, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(717, 122, 3, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(718, 122, 4, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(719, 122, 5, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(720, 122, 6, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(721, 122, 7, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(722, 123, 1, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(723, 123, 2, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(724, 123, 3, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(725, 123, 4, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(726, 123, 5, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(727, 123, 6, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(728, 123, 7, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(729, 124, 1, 1, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(730, 124, 2, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(731, 124, 3, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(732, 124, 4, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(733, 124, 5, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(734, 124, 6, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(735, 124, 7, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(736, 125, 1, 1, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(737, 125, 2, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(738, 125, 3, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(739, 125, 4, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(740, 125, 5, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(741, 125, 6, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(742, 125, 7, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(743, 126, 1, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(744, 126, 2, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(745, 126, 3, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(746, 126, 4, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(747, 126, 5, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(748, 126, 6, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(749, 126, 7, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(750, 127, 1, 1, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(751, 127, 2, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(752, 127, 3, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(753, 127, 4, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(754, 127, 5, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(755, 127, 6, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(756, 127, 7, 1, '수강 미완료');

insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(757, 128, 1, 1, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(758, 128, 2, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(759, 128, 3, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(760, 128, 4, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(761, 128, 5, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(762, 128, 6, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(763, 128, 7, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(764, 129, 1, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(765, 129, 2, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(766, 129, 3, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(767, 129, 4, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(768, 129, 5, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(769, 129, 6, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(770, 129, 7, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(771, 130, 1, 1, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(772, 130, 2, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(773, 130, 3, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(774, 130, 4, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(775, 130, 5, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(776, 130, 6, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(777, 130, 7, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(778, 131, 1, 1, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(779, 131, 2, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(780, 131, 3, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(781, 131, 4, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(782, 131, 5, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(783, 131, 6, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(784, 131, 7, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(785, 132, 1, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(786, 132, 2, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(787, 132, 3, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(788, 132, 4, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(789, 132, 5, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(790, 132, 6, 1, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(791, 132, 7, 1, '수강 미완료');

-- 온라인 강의목록 -> 7 : 수료완료한 학생
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(792, 1, 1, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(793, 1, 2, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(794, 1, 3, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(795, 1, 4, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(796, 1, 5, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(797, 1, 6, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status) 
values 
(798, 1, 7, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(799, 2, 1, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(800, 2, 2, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(801, 2, 3, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(802, 2, 4, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(803, 2, 5, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(804, 2, 6, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(805, 2, 7, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(806, 3, 1, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(807, 3, 2, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(808, 3, 3, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(809, 3, 4, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(810, 3, 5, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(811, 3, 6, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(812, 3, 7, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(813, 4, 1, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(814, 4, 2, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(815, 4, 3, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(816, 4, 4, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(817, 4, 5, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(818, 4, 6, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(819, 4, 7, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(820, 5, 1, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(821, 5, 2, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(822, 5, 3, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(823, 5, 4, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(824, 5, 5, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(825, 5, 6, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(826, 5, 7, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(827, 6, 1, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(828, 6, 2, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(829, 6, 3, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(830, 6, 4, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(831, 6, 5, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(832, 6, 6, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(833, 6, 7, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(834, 7, 1, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(835, 7, 2, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(836, 7, 3, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(837, 7, 4, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(838, 7, 5, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(839, 7, 6, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(840, 7, 7, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(841, 8, 1, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(842, 8, 2, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(843, 8, 3, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(844, 8, 4, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(845, 8, 5, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(846, 8, 6, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(847, 8, 7, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(848, 9, 1, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(849, 9, 2, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(850, 9, 3, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(851, 9, 4, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(852, 9, 5, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(853, 9, 6, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(854, 9, 7, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(855, 10, 1, 7, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(856, 10, 2, 7, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(857, 10, 3, 7, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(858, 10, 4, 7, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(859, 10, 5, 7, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(860, 10, 6, 7, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(861, 10, 7, 7, '수강 미완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(862, 11, 1, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(863, 11, 2, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(864, 11, 3, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(865, 11, 4, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(866, 11, 5, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(867, 11, 6, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(868, 11, 7, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(869, 12, 1, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(870, 12, 2, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(871, 12, 3, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(872, 12, 4, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(873, 12, 5, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(874, 12, 6, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(875, 12, 7, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(876, 13, 1, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(877, 13, 2, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(878, 13, 3, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(879, 13, 4, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(880, 13, 5, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(881, 13, 6, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(882, 13, 7, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(883, 14, 1, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(884, 14, 2, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(885, 14, 3, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(886, 14, 4, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(887, 14, 5, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(888, 14, 6, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(889, 14, 7, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(890, 15, 1, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(891, 15, 2, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(892, 15, 3, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(893, 15, 4, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(894, 15, 5, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(895, 15, 6, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(896, 15, 7, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(897, 16, 1, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(898, 16, 2, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(899, 16, 3, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(900, 16, 4, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(901, 16, 5, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(902, 16, 6, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(903, 16, 7, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(904, 17, 1, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(905, 17, 2, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(906, 17, 3, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(907, 17, 4, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(908, 17, 5, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(909, 17, 6, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(910, 17, 7, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(911, 18, 1, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(912, 18, 2, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(913, 18, 3, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(914, 18, 4, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(915, 18, 5, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(916, 18, 6, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(917, 18, 7, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(918, 19, 1, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(919, 19, 2, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(920, 19, 3, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(921, 19, 4, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(922, 19, 5, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(923, 19, 6, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(924, 19, 7, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(925, 20, 1, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(926, 20, 2, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(927, 20, 3, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(928, 20, 4, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(929, 20, 5, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(930, 20, 6, 7, '수강 완료');
insert into tblOnlineCourseList (seq_onlineCourseList, seq_traineeList, seq_onlineLecture, seq_openCurriculum, status)
values 
(931, 20, 7, 7, '수강 완료');

--교사 평가
-- 10번은 중도퇴사인데 DDL에서 not null 조건이 걸려있어 일단 코드만 작성하고 insert 하지 않음
insert into tblTeacherEvaluation 
(seq_teacherEvaluation, seq_traineeList, seq_openCurriculum, grade, content) 
values (1, 1, 7, 4, '강사님이 이해하기 쉽게 설명해주시고 막히는 부분에서 질문을 하면 설명을 다시 잘 해주셔서 좋았습니다. 이 과정을 주변 코딩을 준비하는 친구 지인들에게 추천하고 싶을 정도로 만족하는 수업이였습니다.');
insert into tblTeacherEvaluation 
(seq_teacherEvaluation, seq_traineeList, seq_openCurriculum, grade, content) 
values (2, 2, 7, 4, '강사님께서 모든 수업을 재밌고 쉽게 설명해주셔서 잘 배웠습니다! 항상 학생들을 너무너무 잘 챙겨주셨어요!!');
insert into tblTeacherEvaluation 
(seq_teacherEvaluation, seq_traineeList, seq_openCurriculum, grade, content) 
values (3, 3, 7, 5, '수업 같이 듣는 친구들도 너무 다 좋았어서 제 친구가 다닌다고 하면 무조건 추천할거예요!');
insert into tblTeacherEvaluation 
(seq_teacherEvaluation, seq_traineeList, seq_openCurriculum, grade, content) 
values (4, 4, 7, 4, '선생님께서 비전공자도 쉽게 이해할 수 있게 강의해주셨으며, 수강생에게 애정을 가지고 계신게 느껴졌습니다.');
insert into tblTeacherEvaluation 
(seq_teacherEvaluation, seq_traineeList, seq_openCurriculum, grade, content) 
values (5, 5, 7, 3, '말썽쟁이반 강의하시느라 고생 많으셨습니다. 건강하시고 감사해요!!!');
insert into tblTeacherEvaluation 
(seq_teacherEvaluation, seq_traineeList, seq_openCurriculum, grade, content) 
values (6, 6, 7, 5, '박세인 강사님에 대해 평소 굉장히 후기가 좋았기 때문에 기대하고 교육에 참여하게 되었습니다. 왜 다들 칭찬과 소문이 자자했는지 단번에 알 수 있었습니다. 뒤쳐지는 학생들을 어떻게든 알려주고 이끌어주려고 노력해주시고 현실적인 조언과 함께 격려해주시는 모습에 지난 5.5개월간 너무 유익하게 공부할 수 있었습니다.');
insert into tblTeacherEvaluation 
(seq_teacherEvaluation, seq_traineeList, seq_openCurriculum, grade, content) 
values (7, 7, 7, 4, '과정에서 설명 되어있듯이 자바 기초부터 클라우드까지 다양한 기술 스택을 단기간에 배울 수 있는 5.5개월 이었습니다. 30명을 모두 케어하기에 힘드실 법도 한데 새로운 걸 시작할 때마다 막히는 부분이 있는지 한 사람 한 사람 챙겨주셔서 더 감사한 시간이었습니다. 다른 개발을 준비하는 친구에게 벌써 추천하였습니다ㅎㅎ ');
insert into tblTeacherEvaluation 
(seq_teacherEvaluation, seq_traineeList, seq_openCurriculum, grade, content) 
values (8, 8, 7, 3, '좋은  훈련기관을 만나 좋은 강사님 좋은 매니저님  좋은 친구들을 만나 많은 것들을 배웠습니다.');
insert into tblTeacherEvaluation 
(seq_teacherEvaluation, seq_traineeList, seq_openCurriculum, grade, content) 
values (9, 9, 7, 4, '실력있고 성품 좋으신 강사님께 6개월간 좋은 강의 해주셔서 감사합니다.');
insert into tblTeacherEvaluation 
(seq_teacherEvaluation, seq_traineeList, seq_openCurriculum, grade, content) 
values (10, 10, 7, null, null);
insert into tblTeacherEvaluation 
(seq_teacherEvaluation, seq_traineeList, seq_openCurriculum, grade, content) 
values (11, 11, 7, 4, '의지만 있다면 얻어갈 것이 많은 훈련');
insert into tblTeacherEvaluation 
(seq_teacherEvaluation, seq_traineeList, seq_openCurriculum, grade, content) 
values (12, 12, 7, 5, '저는 기초도 아예 없는 비전공자라서 전공했던 학생들과 같이 수업을 듣는게 조금 걱정스러웠는데, 강사님께서 기초 지식부터 하나하나 알아듣기 쉽게 설명해 주셔서 마지막까지 따라갈 수 있었습니다!
에러가 나거나 수업을 따라가지 못하는 학생이 있으면, 따라올 수 있게 한 학생 한 학생 끝까지 지도해주셔서 너무 감사했습니다! 강사님 덕분에 자신감을 갖고 취업활동을 할 수 있게 되었습니다.');
insert into tblTeacherEvaluation 
(seq_teacherEvaluation, seq_traineeList, seq_openCurriculum, grade, content) 
values (13, 13, 7, 3, '자신이 개발자가 되고 싶지만 너무 어렵거나 혼자 하기 힘들다면 해당 훈련과정을 수강하는 것도 좋은 방법이라 생각한다, 물론 아무것도 안 하고 대충 수업 출석만 한다고 개발자가 되는 건 아니다');
insert into tblTeacherEvaluation 
(seq_teacherEvaluation, seq_traineeList, seq_openCurriculum, grade, content) 
values (14, 14, 7, 4, '매우매우 만족합니다.');
insert into tblTeacherEvaluation 
(seq_teacherEvaluation, seq_traineeList, seq_openCurriculum, grade, content) 
values (15, 15, 7, 5, '강사님께서 모든 수업을 재밌고 쉽게 설명해주셔서 잘 배웠습니다! 항상 학생들을 너무너무 잘 챙겨주셨어요!! 매니저님께서도 늘 카톡드리면 유쾌하고 친절하게 답변 주셔서 좋았습니답^^!!');
insert into tblTeacherEvaluation 
(seq_teacherEvaluation, seq_traineeList, seq_openCurriculum, grade, content) 
values (16, 16, 7, 4, '5.5개월이라는 짧지 않은 시간 동안 강사님의 지치지 않는 열정 덕분에 매 수업을 흥미롭고 유익하게 들을 수 있었습니다!');
insert into tblTeacherEvaluation 
(seq_teacherEvaluation, seq_traineeList, seq_openCurriculum, grade, content) 
values (17, 17, 7, 3, '전공자로써 학부에서 배우지못한 기술들을 배울수 있었습니다. 기초부터 배우기때문에 비전공자들도 쉽게 따라와서 대부분이 무사히 수료하고 취업까지 할 수 있습니다.');
insert into tblTeacherEvaluation 
(seq_teacherEvaluation, seq_traineeList, seq_openCurriculum, grade, content) 
values (18, 18, 7, 4, '수강하고자 했던 수업내용대로 배울 수 있어 만족했고 강사님께서 질문 답변을 깊이 있게 해주셨고 매니저님은 취업 관련 정보들을 다양하게 제공 해주어 만족스럽게 수강을 마무리 할 수 있었다.');
insert into tblTeacherEvaluation 
(seq_teacherEvaluation, seq_traineeList, seq_openCurriculum, grade, content) 
values (19, 19, 7, 3, '비대면 훈련임에도 훈련생들에 대한 지속적인 관심과 배려가 너무 좋았습니다. 강사님도 친절하시고 매니저님도 학생들을 위해주셔서 감동 받았습니다');
insert into tblTeacherEvaluation 
(seq_teacherEvaluation, seq_traineeList, seq_openCurriculum, grade, content) 
values (20, 20, 7, 4, '꼼꼼한 강의로 비전공자도 잘 따라올 수 있는 환경을 마련해주셨습니다. 한명한명의 수강생들을 챙기셨고 뒤쳐지는 사람이 없도록 노력하시는 모습이 대부분의 사람들이 중도포기하지 않고 끝까지 갈 수 있었던 이유인 것 같습니다.');

--성적
