# 월별 잡은 물고기 수 구하기 : 레벨 2
# 배운점 : EXTRACT(단위 FROM 시간) : 시간에서 단위를 추출하는 함수
select COUNT(*) as FISH_COUNT, EXTRACT(MONTH FROM TIME) as MONTH from FISH_INFO
GROUP BY  MONTH ORDER BY MONTH ASC