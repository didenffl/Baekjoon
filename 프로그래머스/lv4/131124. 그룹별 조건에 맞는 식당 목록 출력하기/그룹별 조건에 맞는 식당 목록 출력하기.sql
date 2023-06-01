-- 코드를 입력하세요
SELECT b.member_name, a.review_text, date_format(a.review_date, "%Y-%m-%d") review_date
from rest_review a left join member_profile b 
using (member_id)
where member_id = (select member_id
                  from rest_review
                  group by member_id
                  order by count(review_id) desc
                  limit 1)
order by 3, 2

# SELECT B.MEMBER_NAME,
#        A.REVIEW_TEXT,
#        DATE_FORMAT(A.REVIEW_DATE, '%Y-%m-%d') REVIEW_DATE
# FROM REST_REVIEW A
# LEFT JOIN MEMBER_PROFILE B 
# USING (MEMBER_ID)
# WHERE MEMBER_ID = ( SELECT MEMBER_ID
#                     FROM REST_REVIEW
#                     GROUP BY MEMBER_ID
#                     ORDER BY COUNT(REVIEW_ID) DESC
#                     LIMIT 1 )         
# ORDER BY A.REVIEW_DATE, A.REVIEW_TEXT;