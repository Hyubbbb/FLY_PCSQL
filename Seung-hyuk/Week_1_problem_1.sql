SELECT animal_ins.animal_id AS ANIMAL_ID, animal_ins.name AS NAME
FROM animal_ins JOIN animal_outs ON animal_ins.animal_id = animal_outs.animal_id
WHERE animal_ins.DATETIME > animal_outs.DATETIME
ORDER BY animal_ins.DATETIME
-- https://school.programmers.co.kr/learn/courses/30/lessons/59043
