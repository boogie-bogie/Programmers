/*
1. 통합하기 문제는 union을 먼저 생각한다.
2. 오프라인 테이블에 user_id 값은 Null로 표기한다.

3. 온라인 테이블 where절로 3월 데이터만 필터링 
  > where SALE_DATE LIKE '2022-03%'
4. 오프라인 테이블 where절로 3월 데이터만 필터링하고, null 표기해주기
  > select null as USER_ID
  > where ~
5. UNION 
6. 출력값 지정, date_format()
  > select date_format(판매일, '%Y-%m-%d'), 상품id, 유저id, 판매량
7. 정렬
  > 판매일 asc, 상품id asc, 유저id asc;
*/

SELECT DATE_FORMAT(SALES_DATE, '%Y-%m-%d') AS SALES_DATE
    , PRODUCT_ID
    , USER_ID
    , SALES_AMOUNT
FROM ONLINE_SALE
WHERE SALES_DATE LIKE '2022-03%'

UNION

SELECT DATE_FORMAT(SALES_DATE, '%Y-%m-%d') AS SALES_DATE
    , PRODUCT_ID
    , NULL AS USER_ID
    , SALES_AMOUNT
FROM OFFLINE_SALE
WHERE SALES_DATE LIKE '2022-03%'

ORDER BY SALES_DATE ASC, PRODUCT_ID ASC, USER_ID ASC

