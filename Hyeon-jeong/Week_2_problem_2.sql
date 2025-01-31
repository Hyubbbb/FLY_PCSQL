-- 프로그래머스 부모의 형질을 모두 가지는 대장균 찾기
-- 자식과 부모가 가진 형질이 동일한지를 비트연산자를 활용하여 해결하는 과정이 흥미로웠습니다.
SELECT 
    C.ID, 
    C.GENOTYPE, 
    P.GENOTYPE AS PARENT_GENOTYPE
FROM ECOLI_DATA AS C
JOIN (SELECT ID, GENOTYPE FROM ECOLI_DATA) AS P
ON C.PARENT_ID = P.ID
WHERE (C.GENOTYPE & P.GENOTYPE) = P.GENOTYPE
ORDER BY C.ID
