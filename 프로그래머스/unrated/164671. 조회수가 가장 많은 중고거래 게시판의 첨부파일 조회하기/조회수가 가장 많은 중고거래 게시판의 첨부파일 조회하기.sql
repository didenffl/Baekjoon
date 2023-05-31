# -- 코드를 입력하세요
# SELECT CONCAT('/home/grep/src', board_id, '/', file_id, file_name, file_ext) FILE_PATH
# from used_goods_file 
# where board_id = (select board_id from used_goods_board order by views desc limit 1)
# order by file_id desc;

SELECT CONCAT('/home/grep/src/',BOARD_ID,'/',FILE_ID,FILE_NAME,FILE_EXT) "FILE_PATH"
  FROM USED_GOODS_FILE
 WHERE BOARD_ID = (SELECT BOARD_ID
                     FROM USED_GOODS_BOARD
                 ORDER BY VIEWS DESC LIMIT 1)
ORDER BY FILE_ID DESC;