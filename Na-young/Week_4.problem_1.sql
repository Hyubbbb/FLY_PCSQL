-- https://programmers.co.kr/app/with_setting/tests/120812/challenges/databases/133?original_token=01569d3627c304cfa2a63f73

-- 1. join 여러 방법 사용
-- 2. union 발견!

select ID, CREATOR, ifnull(LIKES, 0) as LIKES from NEW_POSTS
union ALL
select ID, CREATOR, 0 as LIKES from OLD_POSTS
order by ID desc