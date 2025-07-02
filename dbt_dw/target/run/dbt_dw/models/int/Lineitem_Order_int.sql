
  create or replace   view DBT_PRACTICE.DBT_L3_INT.Lineitem_Order_int
  
   as (
    SELECT
l.*
FROM DBT_PRACTICE.DBT_L2_STG.Lineitem_stg l LEFT JOIN
        DBT_PRACTICE.DBT_L2_STG.Orders_stg O ON l.orderid=O.order_id
  );

