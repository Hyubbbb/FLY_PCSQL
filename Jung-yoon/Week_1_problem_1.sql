-- https://school.programmers.co.kr/learn/courses/30/lessons/301646
-- GENOTYPE 이진수 변환
-- 변환값이 NOT 2 AND (1 or 3)

SELECT COUNT(*) AS COUNT FROM ECOLI_DATA
WHERE SUBSTRING(BIN(GENOTYPE), -2, 1) != '1' AND (SUBSTRING(BIN(GENOTYPE), -1, 1) = '1' OR SUBSTRING(BIN(GENOTYPE), -3, 1) = '1');