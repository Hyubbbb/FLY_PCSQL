-- https://programmers.co.kr/app/with_setting/tests/120812/challenges/databases/168?original_token=41b5fb1861cc57f2b593bdfe
SELECT ALGORITHM_TYPE FROM PROBLEMS 
GROUP BY ALGORITHM_TYPE
ORDER BY COUNT(*) DESC, ALGORITHM_TYPE
LIMIT 1