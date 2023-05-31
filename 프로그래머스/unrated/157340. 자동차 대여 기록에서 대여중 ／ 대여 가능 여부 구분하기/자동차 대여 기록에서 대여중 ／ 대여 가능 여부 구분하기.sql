-- 코드를 입력하세요
SELECT car_id, case when sum(if('2022-10-16' between start_date and end_date, 1, 0)) = 0 then '대여 가능' else '대여중' end as availability
from car_rental_company_rental_history
group by car_id
order by 1 desc

# SELECT CAR_ID, 
#        CASE WHEN SUM(IF('2022-10-16' BETWEEN START_DATE AND END_DATE, 1, 0)) = 0 
#        THEN "대여 가능" ELSE "대여중" END AS AVAILABILITY
# FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
# GROUP BY CAR_ID
# ORDER BY CAR_ID DESC