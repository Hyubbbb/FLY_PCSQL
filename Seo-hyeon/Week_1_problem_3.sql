# 가격이 제일 비싼 식품의 정보 출력하기 : 레벨 2
# where 조건 걸 칼럼 = 조건

SELECT * from FOOD_PRODUCT
where PRICE = (select max(PRICE) from FOOD_PRODUCT)