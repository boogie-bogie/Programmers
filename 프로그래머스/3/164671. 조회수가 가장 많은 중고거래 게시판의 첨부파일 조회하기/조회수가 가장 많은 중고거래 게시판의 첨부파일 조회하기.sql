/*

-- BOARD 테이블에서, 조회수가 가장 높은 중고거래 게시물 
    
-- FILE 테이블과 조인해서, 해당 게시물의 첨부파일 경로를 출력
   게시글 ID를 기준으로 GROUP BY
   FILE ID로 DESC

*/

SELECT CONCAT('/home/grep/src/', t2.board_id, '/', t2.file_id, t2.file_name, t2.file_ext) AS FILE_PATH
FROM USED_GOODS_BOARD AS T1
    JOIN USED_GOODS_FILE AS T2
    ON T1.BOARD_ID = T2.BOARD_ID
WHERE T1.BOARD_ID = (SELECT BOARD_ID
                     FROM USED_GOODS_BOARD
                     GROUP BY BOARD_ID
                     ORDER BY MAX(VIEWS) DESC
                     LIMIT 1)
ORDER BY T2.FILE_ID DESC