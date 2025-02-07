-- 프로그래머스, 부서별 평균 연봉 조회하기
-- https://school.programmers.co.kr/learn/courses/30/lessons/284529

SELECT E.DEPT_ID, D.DEPT_NAME_EN, ROUND(AVG(E.SAL)) AS AVG_SAL
FROM HR_EMPLOYEES E
LEFT JOIN HR_DEPARTMENT D
ON E.DEPT_ID = D.DEPT_ID
GROUP BY E.DEPT_ID
ORDER BY AVG_SAL DESC;

