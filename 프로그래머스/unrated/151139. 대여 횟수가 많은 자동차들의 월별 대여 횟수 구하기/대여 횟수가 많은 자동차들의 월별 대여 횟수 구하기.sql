-- 코드를 입력하세요
SELECT month(start_date) as month, a.car_id, count(*) records
from car_rental_company_rental_history a
where a.car_id in (select car_id 
                from car_rental_company_rental_history
                where start_date between '2022-08-01' and '2022-10-31'
                group by car_id
                having count(*) >= 5) and a.start_date between '2022-08-01' and '2022-10-31'
group by month(start_date), a.car_id
having count(*) > 0
order by month(start_date), a.car_id desc


# SELECT MONTH(START_DATE) AS MONTH, R.CAR_ID, COUNT(*) AS RECORDS
# FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY R
# WHERE R.CAR_ID IN (
#     SELECT CAR_ID
#     FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
#     WHERE START_DATE BETWEEN '2022-08-01' AND '2022-10-31'
#     GROUP BY CAR_ID
#     HAVING COUNT(*) >= 5
# )
# AND R.START_DATE BETWEEN '2022-08-01' AND '2022-10-31'
# GROUP BY MONTH(START_DATE), R.CAR_ID
# HAVING COUNT(*) > 0
# ORDER BY MONTH(START_DATE), R.CAR_ID DESC;