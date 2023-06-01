-- 코드를 입력하세요
SELECT a.product_id, a.product_name, sum(a.price*b.amount) total_sales
from food_product a inner join food_order b on a.product_id = b.product_id 
where b.produce_date like "2022-05%"
group by product_id
order by total_sales desc, 1