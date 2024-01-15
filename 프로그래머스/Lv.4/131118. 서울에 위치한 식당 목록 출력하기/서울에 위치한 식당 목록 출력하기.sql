SELECT T1.REST_ID
     , T1.REST_NAME
     , T1.FOOD_TYPE
     , T1.FAVORITES
     , T1.ADDRESS
     , ROUND(AVG(T2.REVIEW_SCORE), 2) AS SCORE
FROM REST_INFO AS T1
    JOIN REST_REVIEW AS T2
    ON T1.REST_ID = T2.REST_ID
WHERE ADDRESS LIKE '서울%'
GROUP BY T1.REST_ID

ORDER BY SCORE DESC, T1.FAVORITES DESC