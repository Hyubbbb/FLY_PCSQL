-- programmers : SQL 고득점 Kit
-- SELECT
-- 대장균들의 자식의 수 구하기 (Level 3)


-- 문제
-- 대장균 개체의 ID(ID)와 자식의 수(CHILD_COUNT)를 출력하는 SQL 문을 작성해주세요. 
-- 자식이 없다면 자식의 수는 0으로 출력해주세요. 
-- 이때 결과는 개체의 ID 에 대해 오름차순 정렬해주세요.

SELECT 
    E1.ID, 
    COALESCE(COUNT(E2.PARENT_ID), 0) AS CHILD_COUNT
            -- COUNT(E2.PARENT_ID): 부모 개체별로 자식 개체의 수를 세기.
FROM ECOLI_DATA E1
LEFT JOIN ECOLI_DATA E2 ON E1.ID = E2.PARENT_ID
-- ECOLI_DATA 테이블을 두 번 사용하여 E1.ID를 기준으로 E2.PARENT_ID와 LEFT JOIN.
-- E1: 부모 개체 역할.
-- E2: 자식 개체 역할.
GROUP BY E1.ID
ORDER BY E1.ID;
