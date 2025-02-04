-- 프로그래머스 연도별 대장균 크기의 편차 구하기
-- group by한 결과를 모든 행에서 가져야 할 때 join을 활용하여 해결해야 하는 점이 까다로웠습니다.

SELECT 
    YEAR,
    MAX_SIZE - SIZE_OF_COLONY AS YEAR_DEV,
    ID
FROM ECOLI_DATA
JOIN (
    SELECT 
        YEAR(DIFFERENTIATION_DATE) AS YEAR, 
        MAX(SIZE_OF_COLONY) AS MAX_SIZE
    FROM ECOLI_DATA
    GROUP BY YEAR
    ) AS B
ON YEAR(DIFFERENTIATION_DATE) = B.YEAR
ORDER BY YEAR, YEAR_DEV
