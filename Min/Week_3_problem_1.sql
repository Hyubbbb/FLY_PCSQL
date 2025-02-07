-- programmers : SQL 고득점 Kit
-- GROUP BY
-- 자동차 종류 별 특정 옵션이 포함된 자동차 수 구하기 (Level 2)


-- 문제
-- CAR_RENTAL_COMPANY_CAR 테이블에서 '통풍시트', '열선시트', '가죽시트' 중 하나 이상의 옵션이 포함된 자동차가 
-- 자동차 종류 별로 몇 대인지 출력하는 SQL문을 작성해주세요. 
-- 이때 자동차 수에 대한 컬럼명은 CARS로 지정하고, 결과는 자동차 종류를 기준으로 오름차순 정렬해주세요.

SELECT CAR_TYPE, COUNT(*) AS CARS
FROM CAR_RENTAL_COMPANY_CAR
WHERE OPTIONS LIKE '%시트%'
-- LIKE '%시트%': "시트"가 포함된 모든 문자열을 찾음 (정상 동작)
-- LIKE '%시트': "시트"로 끝나는 문자열만 찾음 (이 경우 문제가 발생할 수 있음)
-- '%시트'는 "시트"로 끝나는 모든 문자열을 찾으려고 하는데, 
-- 실제로 데이터베이스에서 OPTIONS 컬럼의 값은 공백이나 추가적인 구분자(쉼표 등)가 있을 수 있기 때문에, %시트가 '시트'로 끝나는 값을 정확히 찾지 못할 수 있습니다.
GROUP BY CAR_TYPE
ORDER BY CAR_TYPE
