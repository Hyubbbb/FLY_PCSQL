-- programmers : SQL 고득점 Kit
-- GROUP BY
-- 자동차 대여 기록에서 대여중 / 대여 가능 여부 구분하기 (Level 3)


-- 문제
-- CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블에서 2022년 10월 16일에 대여 중인 자동차인 경우 '대여중' 이라고 표시하고, 
-- 대여 중이지 않은 자동차인 경우 '대여 가능'을 표시하는 컬럼(컬럼명: AVAILABILITY)을 추가하여 자동차 ID와 AVAILABILITY 리스트를 출력하는 SQL문을 작성해주세요. 
-- 이때 반납 날짜가 2022년 10월 16일인 경우에도 '대여중'으로 표시해주시고 결과는 자동차 ID를 기준으로 내림차순 정렬해주세요.

SELECT DISTINCT CAR_ID,
       CASE 
           WHEN EXISTS (
               SELECT 1 -- EXISTS는 서브쿼리가 한 개 이상의 행을 반환하면 TRUE, 그렇지 않으면 FALSE를 반환합니다.
                        -- 따라서 SELECT 1을 사용하든, SELECT *를 사용하든, SELECT 'ANY_VALUE'를 사용하든 결과는 동일합니다.
                        -- 일반적으로 SELECT 1을 사용하면 가독성이 좋고, 성능적으로도 효율적입니다.

                        -- SELECT *는 모든 컬럼 데이터를 가져오므로 불필요한 연산이 발생할 수 있음.
                        -- SELECT 1은 정확히 1개의 상수를 반환하므로 불필요한 데이터를 조회하지 않음.
               FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY AS B
               WHERE B.CAR_ID = A.CAR_ID
               AND '2022-10-16' BETWEEN B.START_DATE AND B.END_DATE
           ) THEN '대여중'
           ELSE '대여 가능'
       END AS AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY AS A
ORDER BY CAR_ID DESC;

-- GROUP BY를 사용할 경우, 특정 CAR_ID에 대해 여러 개의 대여 기록이 있을 때 하나의 행으로 집계해야 하지만, 현재 SQL에서는 집계가 이루어지지 않습니다.
