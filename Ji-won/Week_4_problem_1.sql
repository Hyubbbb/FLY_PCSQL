-- 프로그래머스, 상품 별 오프라인 매출 구하기
-- https://school.programmers.co.kr/learn/courses/30/lessons/131533

SELECT P.PRODUCT_CODE, P.PRICE*SUM(S.SALES_AMOUNT) AS SALES
FROM PRODUCT P
JOIN OFFLINE_SALE S 
ON P.PRODUCT_ID = S.PRODUCT_ID
GROUP BY P.PRODUCT_ID
ORDER BY SALES DESC, PRODUCT_CODE;
