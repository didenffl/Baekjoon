-- 코드를 입력하세요
SELECT book_id, author_name, date_format(published_date, "%Y-%m-%d")
from book b join author a on b.author_id = a.author_id
where b.category like '경제'
order by b.published_date