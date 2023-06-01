-- 코드를 입력하세요
SELECT date_format(datetime, "%H") hour, count(*) as count
from animal_outs
where date_format(datetime, "%H") between 9 and 20
group by date_format(datetime, "%H")
order by date_format(datetime, "%H");