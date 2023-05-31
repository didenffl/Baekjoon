-- 코드를 입력하세요
SELECT a.animal_id, a.name
from animal_outs a left join animal_ins b on a.animal_id = b.animal_id
order by datediff(a.datetime, b.datetime) desc
limit 2

# SELECT O.ANIMAL_ID, O.NAME
# FROM ANIMAL_OUTS O
# LEFT JOIN ANIMAL_INS I
# ON O.ANIMAL_ID = I.ANIMAL_ID
# ORDER BY (DATEDIFF(O.DATETIME,I.DATETIME)) DESC
# LIMIT 2