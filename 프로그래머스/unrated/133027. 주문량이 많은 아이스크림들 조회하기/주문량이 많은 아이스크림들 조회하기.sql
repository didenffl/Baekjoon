-- 코드를 입력하세요
SELECT a.flavor
from first_half a join july b on a.flavor = b.flavor
group by flavor
order by sum(a.total_order + b.total_order) desc
limit 3

# SELECT FLAVOR
# FROM FIRST_HALF A
# JOIN JULY B USING (FLAVOR)
# GROUP BY FLAVOR
# ORDER BY SUM(A.TOTAL_ORDER + B.TOTAL_ORDER) DESC
# LIMIT 3;