-- 코드를 입력하세요
SELECT a.author_id, b.author_name, a.category, sum(a.price*c.sales) as total_sales
from (book a join author b on a.author_id = b.author_id) join book_sales c on a.book_id = c.book_id
where c.sales_date like "2022-01%"
group by category, author_id
order by 1, 3 desc