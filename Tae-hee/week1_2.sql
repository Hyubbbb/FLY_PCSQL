#프로그래머스 > 코딩테스트 연습 > SUM, MAX, MIN >가격이 제일 비싼 식품의 정보 출력하기기
SELECT PRODUCT_ID, 
       PRODUCT_NAME, 
       PRODUCT_CD, 
       CATEGORY, 
       PRICE 
       FROM FOOD_PRODUCT 
       WHERE PRICE = (
           SELECT MAX(PRICE) 
           FROM 
           FOOD_PRODUCT
       )