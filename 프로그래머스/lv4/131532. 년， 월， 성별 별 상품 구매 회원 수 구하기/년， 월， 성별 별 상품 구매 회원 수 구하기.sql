-- 코드를 입력하세요
SELECT year(b.sales_date) year, month(b.sales_date) month, a.gender, count(distinct a.user_id) users
from user_info a natural join online_sale b
group by year, month, gender
having gender is not null
order by 1, 2, 3

# SELECT DATE_FORMAT(SALES_DATE,'%Y') AS YEAR,
#        DATE_FORMAT(SALES_DATE,'%m') AS MONTH, 
#        GENDER, 
#        COUNT(DISTINCT USER_ID) AS USERS
# FROM USER_INFO  
# NATURAL JOIN ONLINE_SALE 
# WHERE GENDER IS NOT NULL
# GROUP BY YEAR, MONTH, GENDER
# ORDER BY YEAR, MONTH, GENDER;