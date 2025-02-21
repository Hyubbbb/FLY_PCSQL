-- 프로그래머스, 대장균들의 자식의 수 구하기
-- https://school.programmers.co.kr/learn/courses/30/lessons/299305

SELECT A.ID, COUNT(B.ID) AS CHILD_COUNT
FROM ECOLI_DATA A
LEFT JOIN ECOLI_DATA B ON A.ID = B.PARENT_ID
GROUP BY A.ID
