
  create or replace   view DBT_PRACTICE.DBT_L2_STG.Orders_stg
  
   as (
    SELECT
O_ORDERKEY AS ORDER_ID
,O_CUSTKEY AS CUSTOMER_ID
,O_ORDERSTATUS AS ORDERSTATUS
,O_TOTALPRICE AS PRICE
,O_ORDERDATE AS ORDER_DATE
,O_ORDERPRIORITY AS ORDER_PRIORITY
,O_CLERK AS CLERK
,O_SHIPPRIORITY AS SHIP_PRIORITY
,O_COMMENT AS "COMMENT"
FROM DBT_PRACTICE.PUBLIC.ORDERS
  );

