-- https://school.programmers.co.kr/learn/courses/30/lessons/131533
SELECT p.product_code, SUM(p.price * o.sales_amount) AS SALES
FROM product p
JOIN offline_sale o ON p.product_id = o.product_id
GROUP BY p.product_code
ORDER BY 2 DESC, 1
