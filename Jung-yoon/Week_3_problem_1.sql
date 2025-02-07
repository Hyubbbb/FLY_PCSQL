-- https://dakwk.tistory.com/entry/MySQL-%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%98%EB%A8%B8%EC%8A%A4-%EC%A1%B0%EA%B1%B4%EC%97%90-%EB%A7%9E%EB%8A%94-%EB%8F%84%EC%84%9C%EC%99%80-%EC%A0%80%EC%9E%90-%EB%A6%AC%EC%8A%A4%ED%8A%B8-%EC%B6%9C%EB%A0%A5%ED%95%98%EA%B8%B0-LEVEL-2
SELECT book_id, A.author_name, DATE_FORMAT(published_date, '%Y-%m-%d') AS published_date
FROM BOOK B
INNER JOIN AUTHOR A ON B.author_id = A.author_id AND B.category = "경제"
ORDER BY published_date
