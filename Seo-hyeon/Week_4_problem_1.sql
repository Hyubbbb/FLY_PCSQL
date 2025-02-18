-- 자동차 종류 별 특정 옵션이 포함된 자동차 수 구하기
SELECT CAR_TYPE, count(CAR_TYPE) as CARS from CAR_RENTAL_COMPANY_CAR
where OPTIONS like ('%시트%')
group by CAR_TYPE
order by CAR_TYPE