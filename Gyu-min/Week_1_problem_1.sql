-- 프로그래머스 고득점kit 평균 일일 대여요금 구하기! --
SELECT ROUND(AVG(DAILY_FEE), 0, 2)
FROM CAR_RENTAL_COMPANY_CAR
WHERE CAR_TYPE = 'SUV';