-- 1. 강의진행여부 자동 변경 > 현재 날짜를 기준으로 강의 예정, 강의중, 강의 종료로 자동 변경


-- 2. 강의 종료시 학생들 수료 상태로 변경 + 수료날짜 자동 업데이트
create or replace procedure procUpdateCurriCompletionDate 
is
    cusor vcursor is
        select * from 
end;
/

select * 
from tblTraineeList tl
;
-- 4. 결석생은 자동으로 출결 테이블에 결석 데이터 들어가게 만들기


-- 5. 출결인정 서류 내고 허가 받으면 출결 인정으로 자동 업데이트


-- 10. 출결 상황을 자동 업데이트 하는 트리거

