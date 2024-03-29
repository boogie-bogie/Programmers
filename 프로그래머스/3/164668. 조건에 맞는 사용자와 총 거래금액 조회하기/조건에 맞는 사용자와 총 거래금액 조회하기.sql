
SELECT T2.USER_ID
     , T2.NICKNAME
     , SUM(PRICE) AS TOTAL_SALES
FROM USED_GOODS_BOARD AS T1
    JOIN USED_GOODS_USER AS T2
    ON T1.WRITER_ID = T2.USER_ID
WHERE STATUS = 'DONE'
GROUP BY T1.WRITER_ID
HAVING SUM(PRICE) >= 700000
ORDER BY TOTAL_SALES ASC