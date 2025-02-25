-- 프로그래머스 고득점 Kit FrontEnd 개발자 찾기
-- SKILL_CODE와 CODE를 &했을 때 CODE가 나와야함
SELECT DISTINCT D.ID, D.EMAIL, D.FIRST_NAME, D.LAST_NAME
FROM DEVELOPERS AS D
INNER JOIN SKILLCODES AS S ON (S.CODE & D.SKILL_CODE) = S.CODE
WHERE S.CATEGORY = 'Front End'
ORDER BY D.ID ASC