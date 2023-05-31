-- 코드를 입력하세요
SELECT distinct a.writer_id user_id, b.nickname, sum(price) total_sales
from used_goods_board a join used_goods_user b on a.writer_id = b.user_id
where a.status = "DONE"
group by user_id
having sum(price) >= 700000
order by 3