-- 프로그래머스, 멸종위기의 대장균 찾기
-- https://school.programmers.co.kr/learn/courses/30/lessons/301651

WITH RECURSIVE GEN AS (
    SELECT ID, PARENT_ID, 1 GENERATION
    FROM ECOLI_DATA
    WHERE PARENT_ID IS NULL 
    
    UNION ALL
    
    SELECT D.ID, D.PARENT_ID, GENERATION + 1
    FROM ECOLI_DATA D JOIN GEN G 
    ON G.ID = D.PARENT_ID 
),
GEN2 AS (
    SELECT ID, PARENT_ID, GENERATION, (SELECT COUNT(*)
                                       FROM GEN  D
                                       WHERE G.ID = D.PARENT_ID) CHILD_COUNT
    FROM GEN G
)

SELECT COUNT(*) COUNT, GENERATION 
FROM GEN2
WHERE CHILD_COUNT = 0
GROUP BY GENERATION 
ORDER BY GENERATION;
