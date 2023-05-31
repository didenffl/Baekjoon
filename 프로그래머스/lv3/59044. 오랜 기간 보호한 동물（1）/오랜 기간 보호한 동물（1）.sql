-- 코드를 입력하세요
SELECT a.name, a.datetime
from animal_ins a left join animal_outs b on a.animal_id = b.animal_id
where b.animal_id is NULL
order by a.datetime
limit 3;

# SELECT A.NAME, A.DATETIME
# FROM ANIMAL_INS A
# LEFT JOIN ANIMAL_OUTS B
# ON A.ANIMAL_ID = B.ANIMAL_ID
# WHERE B.ANIMAL_ID IS NULL
# ORDER BY A.DATETIME
# LIMIT 3;