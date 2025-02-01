-- https://school.programmers.co.kr/learn/courses/30/lessons/299305

SELECT a.ID, COUNT(b.ID) AS CHILD_COUNT
FROM ECOLI_DATA a
LEFT JOIN ECOLI_DATA b ON a.ID = b.PARENT_ID
GROUP BY a.ID
