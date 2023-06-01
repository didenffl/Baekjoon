-- 코드를 입력하세요
SELECT category, price, product_name
from food_product 
where (category, price) in (
select category, max(price)
from food_product
group by category
having category in ('과자', '국', '김치', '식용유'))
order by price desc

# having category in ('과자', '국', '김치', '식용유')
# order by max_price desc

# SELECT CATEGORY, PRICE, PRODUCT_NAME
# FROM FOOD_PRODUCT
# WHERE (CATEGORY, PRICE) IN (
#     SELECT CATEGORY, MAX(PRICE)
#     FROM FOOD_PRODUCT
#     GROUP BY CATEGORY
#     HAVING CATEGORY IN ('과자', '국', '김치', '식용유')
# )
# ORDER BY PRICE DESC;