-- 보호소에서 중성화한 동물
SELECT ANIMAL_INS.ANIMAL_ID, ANIMAL_INS.ANIMAL_TYPE, ANIMAL_INS.NAME from ANIMAL_INS
left join ANIMAL_OUTS using (ANIMAL_ID)
where ANIMAL_INS.SEX_UPON_INTAKE in ( 'Intact Female', 'Intact Male')
and ANIMAL_OUTS.SEX_UPON_OUTCOME in ('Spayed Female', 'Neutered Male')
order by ANIMAL_ID