-- 이름이 없는 동물의 아이디

SELECT ANIMAL_ID from ANIMAL_INS
where NAME is null
order by ANIMAL_ID asc