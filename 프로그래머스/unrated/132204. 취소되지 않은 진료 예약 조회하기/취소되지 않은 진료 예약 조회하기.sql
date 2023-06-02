-- 코드를 입력하세요
SELECT a.apnt_no, c.pt_name, c.pt_no, b.mcdp_cd, b.dr_name, a.apnt_ymd
from (appointment a inner join doctor b on a.mddr_id = b.dr_id) inner join patient c on a.pt_no = c.pt_no
# from patient p inner join appointment a on a.pt_no = p.pt_no inner join doctor d on d.dr_id = a.mddr_id
where date_format(a.apnt_ymd, "%Y-%m-%d") = "2022-04-13" and a.apnt_cncl_yn = 'N' and a.mcdp_cd = 'CS'
order by a.apnt_ymd;

# SELECT A.APNT_NO
#      , P.PT_NAME
#      , P.PT_NO
#      , D.MCDP_CD
#      , D.DR_NAME
#      , A.APNT_YMD
# FROM PATIENT P
#     INNER JOIN APPOINTMENT A ON A.PT_NO = P.PT_NO
#     INNER JOIN DOCTOR D ON D.DR_ID = A.MDDR_ID
# WHERE A.APNT_YMD BETWEEN '2022-04-13 00:00:00' AND '2022-04-13 23:59:59'
# AND A.APNT_CNCL_YN = 'N'
# AND A.MCDP_CD = 'CS'
# ORDER BY A.APNT_YMD
