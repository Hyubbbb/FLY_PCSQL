# 잡은 물고기 중 가장 큰 물고기의 길이 구하기
# MAX 함수, cm 붙이기 위해서는 CONCAT 함수 사용

select CONCAT(MAX(LENGTH), "cm") as MAX_LENGTH from FISH_INFO