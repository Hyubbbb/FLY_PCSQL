-- https://school.programmers.co.kr/learn/courses/30/lessons/293261

SELECT fi.ID, ni.FISH_NAME, fi.LENGTH
FROM FISH_INFO fi
jOIN FISH_NAME_INFO ni ON fi.FISH_TYPE = ni.FISH_TYPE
WHERE (ni.FISH_TYPE, fi.LENGTH) 
    IN (
        SELECT FISH_TYPE, MAX(LENGTH)
        FROM FISH_INFO
        GROUP BY FISH_TYPE )
order by fi.id;
