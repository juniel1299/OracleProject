-- 공휴일
insert into tblPublicHoliday (seq_publicHoliday, name, holiday)
values (1, '추석', TO_DATE('2023-09-28', 'YYYY-MM-DD'));

insert into tblPublicHoliday (seq_publicHoliday, name, holiday)
values (2, '추석', TO_DATE('2023-09-29', 'YYYY-MM-DD'));

insert into tblPublicHoliday (seq_publicHoliday, name, holiday)
values (3, '개천절', TO_DATE('2023-10-03', 'YYYY-MM-DD'));

insert into tblPublicHoliday (seq_publicHoliday, name, holiday)
values (4, '한글날', TO_DATE('2023-10-09', 'YYYY-MM-DD'));

insert into tblPublicHoliday (seq_publicHoliday, name, holiday)
values (5, '성탄절', TO_DATE('2023-12-25', 'YYYY-MM-DD'));

insert into tblPublicHoliday (seq_publicHoliday, name, holiday)
values (6, '새해', TO_DATE('2024-01-01', 'YYYY-MM-DD'));

insert into tblPublicHoliday (seq_publicHoliday, name, holiday)
values (7, '설날', TO_DATE('2024-02-09', 'YYYY-MM-DD'));

insert into tblPublicHoliday (seq_publicHoliday, name, holiday)
values (8, '설날', TO_DATE('2024-02-12', 'YYYY-MM-DD'));

insert into tblPublicHoliday (seq_publicHoliday, name, holiday)
values (9, '삼일절', TO_DATE('2024-03-01', 'YYYY-MM-DD'));

insert into tblPublicHoliday (seq_publicHoliday, name, holiday)
values (10, '22대 국회의원 선거', TO_DATE('2024-04-10', 'YYYY-MM-DD'));

insert into tblPublicHoliday (seq_publicHoliday, name, holiday)
values (11, '대체공휴일', TO_DATE('2024-05-06', 'YYYY-MM-DD'));

insert into tblPublicHoliday (seq_publicHoliday, name, holiday)
values (12, '부처님오신날', TO_DATE('2024-05-15', 'YYYY-MM-DD'));

insert into tblPublicHoliday (seq_publicHoliday, name, holiday)
values (13, '현충일', TO_DATE('2024-06-06', 'YYYY-MM-DD'));

insert into tblPublicHoliday (seq_publicHoliday, name, holiday)
values (14, '광복절', TO_DATE('2024-08-15', 'YYYY-MM-DD'));

select * from tblPublicHoliday;
commit;



--교재 목록
insert into tblTextbookList (seq_textbookList, seq_textbook, seq_subject)
values (1, 1, 1);

insert into tblTextbookList (seq_textbookList, seq_textbook, seq_subject)
values (2, 2, 1);

insert into tblTextbookList (seq_textbookList, seq_textbook, seq_subject)
values (3, 3, 6);

insert into tblTextbookList (seq_textbookList, seq_textbook, seq_subject)
values (4, 4, 3);

insert into tblTextbookList (seq_textbookList, seq_textbook, seq_subject)
values (5, 5, 9);

insert into tblTextbookList (seq_textbookList, seq_textbook, seq_subject)
values (6, 6, 10);

insert into tblTextbookList (seq_textbookList, seq_textbook, seq_subject)
values (7, 7, 11);

insert into tblTextbookList (seq_textbookList, seq_textbook, seq_subject)
values (8, 8, 2);

insert into tblTextbookList (seq_textbookList, seq_textbook, seq_subject)
values (9, 9, 5);

insert into tblTextbookList (seq_textbookList, seq_textbook, seq_subject)
values (10, 10, 5);

insert into tblTextbookList (seq_textbookList, seq_textbook, seq_subject)
values (11, 11, 7);

insert into tblTextbookList (seq_textbookList, seq_textbook, seq_subject)
values (12, 12, 4);

select * from tblTextbookList;
commit;



-- 면접 스케줄
declare
    v_seq_trainee number;
begin
    for i in 1..60 loop
        -- 랜덤하게 seq_trainee 선택
        select seq_trainee
        into v_seq_trainee
        from (
            select seq_trainee
            from tblTrainees
            order by DBMS_RANDOM.RANDOM
        )
        where rownum = 1;
        
        -- 날짜를 랜덤하게 선택 ('2023-08-01' ~ '2023-08-31' 사이)
        declare
            v_start_date date := to_date('2023-08-01', 'yyyy-mm-dd');
            v_end_date date := to_date('2023-08-31', 'yyyy-mm-dd');
            v_random_days number;
            v_selected_date date;
        begin
            v_random_days := floor(DBMS_RANDOM.VALUE(0, v_end_date - v_start_date + 1));
            v_selected_date := v_start_date + v_random_days;
            
            -- seq_schedule 삽입
            insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day)
            values (i, mod(i, 10) + 1, v_seq_trainee, v_selected_date);
        end;
    end loop;

    for i in 61..140 loop
        -- 랜덤하게 seq_trainee 선택
        select seq_trainee
        into v_seq_trainee
        from (
            select seq_trainee
            from tblTrainees
            order by DBMS_RANDOM.RANDOM
        )
        where rownum = 1;
        
        -- 날짜를 랜덤하게 선택 ('2023-10-25' ~ '2023-12-23' 사이)
        declare
            v_start_date date := to_date('2023-10-25', 'yyyy-mm-dd');
            v_end_date date := to_date('2023-12-23', 'yyyy-mm-dd');
            v_random_days number;
            v_selected_date date;
        begin
            v_random_days := floor(DBMS_RANDOM.VALUE(0, v_end_date - v_start_date + 1));
            v_selected_date := v_start_date + v_random_days;
            
            -- seq_schedule 삽입
            insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day)
            values (i, mod(i, 10) + 1, v_seq_trainee, v_selected_date);
        end;
    end loop;

    for i in 141..170 loop
        -- 랜덤하게 seq_trainee 선택
        select seq_trainee
        into v_seq_trainee
        from (
            select seq_trainee
            from tblTrainees
            order by DBMS_RANDOM.RANDOM
        )
        where rownum = 1;
        
        -- 날짜를 랜덤하게 선택 ('2023-12-01' ~ '2024-01-02' 사이)
        declare
            v_start_date date := to_date('2023-12-01', 'yyyy-mm-dd');
            v_end_date date := to_date('2024-01-02', 'yyyy-mm-dd');
            v_random_days number;
            v_selected_date date;
        begin
            v_random_days := floor(DBMS_RANDOM.VALUE(0, v_end_date - v_start_date + 1));
            v_selected_date := v_start_date + v_random_days;
            
            -- seq_schedule 삽입
            insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day)
            values (i, mod(i, 10) + 1, v_seq_trainee, v_selected_date);
        end;
    end loop;

    for i in 171..195 loop
        -- 랜덤하게 seq_trainee 선택
        select seq_trainee
        into v_seq_trainee
        from (
            select seq_trainee
            from tblTrainees
            order by DBMS_RANDOM.RANDOM
        )
        where rownum = 1;
        
        -- 날짜를 랜덤하게 선택 ('2024-01-01' ~ '2024-02-25' 사이)
        declare
            v_start_date date := to_date('2024-01-01', 'yyyy-mm-dd');
            v_end_date date := to_date('2024-02-25', 'yyyy-mm-dd');
            v_random_days number;
            v_selected_date date;
        begin
            v_random_days := floor(DBMS_RANDOM.VALUE(0, v_end_date - v_start_date + 1));
            v_selected_date := v_start_date + v_random_days;
            
            -- seq_schedule 삽입
            insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day)
            values (i, mod(i, 10) + 1, v_seq_trainee, v_selected_date);
        end;
    end loop;

    for i in 196..220 loop
        -- 랜덤하게 seq_trainee 선택
        select seq_trainee
        into v_seq_trainee
        from (
            select seq_trainee
            from tblTrainees
            order by DBMS_RANDOM.RANDOM
        )
        where rownum = 1;
        
        -- 날짜를 랜덤하게 선택 ('2024-02-10' ~ '2024-03-05' 사이)
        declare
            v_start_date date := to_date('2024-02-10', 'yyyy-mm-dd');
            v_end_date date := to_date('2024-03-05', 'yyyy-mm-dd');
            v_random_days number;
            v_selected_date date;
        begin
            v_random_days := floor(DBMS_RANDOM.VALUE(0, v_end_date - v_start_date + 1));
            v_selected_date := v_start_date + v_random_days;
            
            -- seq_schedule 삽입
            insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day)
            values (i, mod(i, 10) + 1, v_seq_trainee, v_selected_date);
        end;
    end loop;

    for i in 221..250 loop
        -- 랜덤하게 seq_trainee 선택
        select seq_trainee
        into v_seq_trainee
        from (
            select seq_trainee
            from tblTrainees
            order by DBMS_RANDOM.RANDOM
        )
        where rownum = 1;
        
        -- 날짜를 랜덤하게 선택 ('2024-02-20' ~ '2024-03-01' 사이)
        declare
            v_start_date date := to_date('2024-02-20', 'yyyy-mm-dd');
            v_end_date date := to_date('2024-03-01', 'yyyy-mm-dd');
            v_random_days number;
            v_selected_date date;
        begin
            v_random_days := floor(DBMS_RANDOM.VALUE(0, v_end_date - v_start_date + 1));
            v_selected_date := v_start_date + v_random_days;
            
            -- seq_schedule 삽입
            insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day)
            values (i, mod(i, 10) + 1, v_seq_trainee, v_selected_date);
        end;
    end loop;
end;
/




declare
    v_seq_trainee number;
begin
    for i in 1..250 loop
        -- 랜덤하게 seq_trainee 선택
        select seq_trainee
        into v_seq_trainee
        from (
            select seq_trainee
            from tblTrainees
            order by DBMS_RANDOM.RANDOM
        )
        where rownum = 1;
        
        -- 날짜를 랜덤하게 선택 (2023년 9월부터 2024년 2월까지)
        declare
            v_start_date date := to_date('2023-09-01', 'yyyy-mm-dd');
            v_end_date date := to_date('2024-02-29', 'yyyy-mm-dd');
            v_random_days number;
            v_selected_date date;
        begin
            v_random_days := floor(DBMS_RANDOM.VALUE(0, v_end_date - v_start_date + 1));
            v_selected_date := v_start_date + v_random_days;
            
            -- seq_schedule 삽입
            insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day)
            values (i, mod(i, 10) + 1, v_seq_trainee, v_selected_date);
        end;
    end loop;
end;
/


insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(1, 2, 62, TO_DATE('2021-01-24', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(2, 3, 142, TO_DATE('2024-01-24', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(3, 4, 51, TO_DATE('2023-10-03', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(4, 5, 129, TO_DATE('2024-02-03', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(5, 6, 124, TO_DATE('2023-12-17', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(6, 7, 140, TO_DATE('2024-01-18', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(7, 8, 6, TO_DATE('2023-10-16', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(8, 9, 116, TO_DATE('2024-01-11', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(9, 10, 37, TO_DATE('2023-12-03', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(10, 1, 33, TO_DATE('2023-11-27', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(11, 2, 10, TO_DATE('2023-11-27', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(12, 3, 44, TO_DATE('2024-01-16', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(13, 4, 132, TO_DATE('2023-12-12', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(14, 5, 70, TO_DATE('2023-12-30', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(15, 6, 19, TO_DATE('2023-11-20', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(16, 7, 74, TO_DATE('2023-09-08', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(17, 8, 35, TO_DATE('2023-11-20', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(18, 9, 79, TO_DATE('2023-10-07', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(19, 10, 65, TO_DATE('2023-09-25', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(20, 1, 67, TO_DATE('2024-02-09', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(21, 2, 37, TO_DATE('2023-10-05', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(22, 3, 115, TO_DATE('2024-01-01', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(23, 4, 150, TO_DATE('2024-02-26', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(24, 5, 79, TO_DATE('2023-10-04', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(25, 6, 128, TO_DATE('2023-12-10', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(26, 7, 96, TO_DATE('2023-10-19', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(27, 8, 99, TO_DATE('2023-11-12', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(28, 9, 50, TO_DATE('2023-11-08', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(29, 10, 59, TO_DATE('2023-10-14', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(30, 1, 101, TO_DATE('2023-12-28', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(31, 2, 18, TO_DATE('2023-10-23', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(32, 3, 37, TO_DATE('2023-11-15', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(33, 4, 7, TO_DATE('2024-02-23', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(34, 5, 45, TO_DATE('2024-02-25', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(35, 6, 109, TO_DATE('2023-11-01', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(36, 7, 141, TO_DATE('2023-12-01', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(37, 8, 34, TO_DATE('2023-09-13', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(38, 9, 4, TO_DATE('2024-01-12', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(39, 10, 2, TO_DATE('2023-10-16', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(40, 1, 7, TO_DATE('2023-10-21', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(41, 2, 86, TO_DATE('2023-12-01', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(42, 3, 63, TO_DATE('2023-10-11', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(43, 4, 6, TO_DATE('2023-12-17', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(44, 5, 106, TO_DATE('2023-10-18', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(45, 6, 74, TO_DATE('2024-02-21', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(46, 7, 96, TO_DATE('2023-09-09', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(47, 8, 18, TO_DATE('2023-10-19', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(48, 9, 47, TO_DATE('2023-12-22', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(49, 10, 118, TO_DATE('2023-12-30', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(50, 1, 79, TO_DATE('2024-01-03', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(51, 2, 125, TO_DATE('2023-10-29', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(52, 3, 121, TO_DATE('2024-02-24', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(53, 4, 79, TO_DATE('2024-01-06', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(54, 5, 37, TO_DATE('2023-09-30', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(55, 6, 98, TO_DATE('2023-11-06', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(56, 7, 50, TO_DATE('2024-02-06', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(57, 8, 24, TO_DATE('2023-11-01', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(58, 9, 23, TO_DATE('2023-10-05', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(59, 10, 70, TO_DATE('2023-11-30', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(60, 1, 47, TO_DATE('2023-10-26', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(61, 2, 121, TO_DATE('2023-12-05', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(62, 3, 101, TO_DATE('2024-02-20', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(63, 4, 63, TO_DATE('2024-01-21', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(64, 5, 142, TO_DATE('2024-02-17', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(65, 6, 111, TO_DATE('2023-09-06', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(66, 7, 2, TO_DATE('2023-10-29', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(67, 8, 47, TO_DATE('2024-01-02', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(68, 9, 83, TO_DATE('2023-11-30', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day) 
values(69, 10, 63, TO_DATE('2023-09-18', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day)
values(70, 1, 113, TO_DATE('2023-09-18', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day)
values(71, 2, 102, TO_DATE('2023-09-21', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day)
values(72, 3, 59, TO_DATE('2023-09-09', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day)
values(73, 4, 68, TO_DATE('2023-09-25', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day)
values(74, 5, 19, TO_DATE('2023-10-09', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day)
values(75, 6, 5, TO_DATE('2024-01-28', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day)
values(76, 7, 95, TO_DATE('2023-12-25', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day)
values(77, 8, 31, TO_DATE('2023-09-25', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day)
values(78, 9, 105, TO_DATE('2023-09-08', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day)
values(79, 10, 78, TO_DATE('2024-02-24', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day)
values(80, 1, 12, TO_DATE('2023-11-28', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day)
values(81, 2, 69, TO_DATE('2023-09-23', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day)
values(82, 3, 83, TO_DATE('2023-11-03', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day)
values(83, 4, 126, TO_DATE('2024-02-24', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day)
values(84, 5, 133, TO_DATE('2023-12-30', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day)
values(85, 6, 2, TO_DATE('2023-12-18', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day)
values(86, 7, 18, TO_DATE('2023-10-05', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day)
values(87, 8, 149, TO_DATE('2024-01-21', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day)
values(88, 9, 23, TO_DATE('2024-01-14', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day)
values(89, 10, 91, TO_DATE('2023-09-12', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day)
values(90, 1, 48, TO_DATE('2024-02-08', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day)
values(91, 2, 24, TO_DATE('2023-10-29', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day)
values(92, 3, 56, TO_DATE('2023-09-10', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day)
values(93, 4, 3, TO_DATE('2023-09-12', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day)
values(94, 5, 100, TO_DATE('2023-09-10', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day)
values(95, 6, 135, TO_DATE('2023-12-22', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day)
values(96, 7, 16, TO_DATE('2023-11-07', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day)
values(97, 8, 118, TO_DATE('2024-01-21', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day)
values(98, 9, 119, TO_DATE('2023-11-05', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day)
values(99, 10, 137, TO_DATE('2024-02-23', 'YYYY-MM-DD'));

insert into tblInterviewSchedule (seq_schedule, seq_manager, seq_trainee, day)
values(100, 1, 99, TO_DATE('2023-09-24', 'YYYY-MM-DD'));

select * from tblInterviewSchedule;
commit;



-- 면접 결과
desc tblInterviewResults;
insert into tblInterviewResults (seq_interviewResults, seq_schedule, status, etc) values (, , , );
















