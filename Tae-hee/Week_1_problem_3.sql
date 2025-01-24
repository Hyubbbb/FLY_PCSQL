#프로그래머스 > GROUP BY >대여 횟수가 많은 자동차들 
SELECT month(A.start_date) AS MONTH, A.CAR_ID, COUNT(*) AS RECORDS
    FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY  A
    INNER JOIN
        (SELECT 
            HISTORY_ID, 
            B.CAR_ID, 
            B.START_DATE, END_DATE  
            FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY  B
            WHERE START_DATE>="2022-08-01" and START_DATE<"2022-11-01" 
            GROUP BY CAR_ID 
            HAVING COUNT(B.CAR_ID) >=5) C
    ON A.CAR_ID = C.CAR_ID
    WHERE A.start_date>="2022-08-01" and A.start_date<"2022-11-01"
    GROUP BY MONTH, CAR_ID
    HAVING RECORDS >0
    ORDER BY MONTH, CAR_ID DESC
    