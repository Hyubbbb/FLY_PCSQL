-- https://school.programmers.co.kr/learn/courses/30/lessons/276035
select DISTINCT d.ID, d.EMAIL, d.FIRST_NAME, d.LAST_NAME from DEVELOPERS as d
inner join SKILLCODES as s
on BIN(s.CODE | d.SKILL_CODE) = BIN(d.SKILL_CODE)
where s.CATEGORY = 'Front End'
order by d.ID

-- # select d.ID, BIN(s.CODE), BIN(d.SKILL_CODE), (BIN(s.CODE | d.SKILL_CODE)) from DEVELOPERS as d
-- # inner join SKILLCODES as s
  
-- where CONV(s.CODE, 10, 2) & CONV(d.SKILL_CODE, 10, 2) = CONV(d.SKILL_CODE, 10, 2) 

-- CONV(s.CODE, 10, 2) | CONV(d.SKILL_CODE, 10, 2) = CONV(s.CODE, 10, 2)
-- d.ID, d.EMAIL, d.FIRST_NAME, d.LAST_NAME
--  and (s.CATEGORY = 'Front End') 

-- # select d.ID, d.EMAIL, d.FIRST_NAME, d.LAST_NAME from DEVELOPERS as d
-- # inner join SKILLCODES as s 
-- # where CONV(s.CODE, 10, 2) | CONV(d.SKILL_CODE, 10, 2) = CONV(d.SKILL_CODE, 10, 2) and s.CATEGORY = 'Front End'
