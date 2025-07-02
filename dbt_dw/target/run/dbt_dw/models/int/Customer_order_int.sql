
  create or replace   view DBT_PRACTICE.DBT_L3_INT.Customer_order_int
  
   as (
    SELECT
c.*
FROM DBT_PRACTICE.DBT_L2_STG.Customer_stg C LEFT JOIN
        DBT_PRACTICE.DBT_L2_STG.Orders_stg O ON c.customer_id=O.CUSTOMER_ID
  );

