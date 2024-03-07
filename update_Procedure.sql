-- 1. 강의진행여부 자동 변경 > 현재 날짜를 기준으로 강의 예정, 강의중, 강의 종료로 자동 변경
create or replace procedure procUpdateCurriProgress
is
    vSeq number;
    vStartDate DATE;
    vEndDate DATE;
    
    cursor vcursor is
        select seq_opencurriculum, startdate, enddate
        from tblopencurriculum;       
begin
    open vcursor;
    loop
        fetch vcursor into vSeq, vStartdate, vEnddate;
        exit when vcursor%notfound;

        -- 개강일이 현재보다 미래일 때
        if vstartDate > sysdate 
            then update tblopencurriculum set seq_curriculumprogress = 1 where seq_opencurriculum = vseq;
    
     -- 현재가 개강일과 종료일 사이일 때
        ELSIF vstartDate < sysdate and venddate > sysdate 
            then update tblopencurriculum set seq_curriculumprogress = 2 where seq_opencurriculum = vseq;
    
        -- 현재가 종료일보다 미래일 때
        ELSIF venddate < sysdate 
            then update tblopencurriculum set seq_curriculumprogress = 3 where seq_opencurriculum = vseq;
        END IF;
    end loop;
    close vcursor;    
end procUpdateCurriProgress;
/
begin
    procUpdateCurriProgress();
end;
/

-- 2. 강의 종료시 학생들 수료 상태로 변경 + 수료날짜 자동 업데이트


-- 4. 결석생은 자동으로 출결 테이블에 결석 데이터 들어가게 만들기


-- 5. 출결인정 서류 내고 허가 받으면 출결 인정으로 자동 업데이트


-- 10. 출결 상황을 자동 업데이트 하는 트리거

