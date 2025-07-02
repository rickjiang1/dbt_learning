
  create or replace   view DBT_PRACTICE.DBT_L3_INT.National_Supplier_int
  
   as (
    SELECT
n.*
FROM DBT_PRACTICE.DBT_L2_STG.Nation_stg n LEFT JOIN
        DBT_PRACTICE.DBT_L2_STG.Supplier_stg s ON n.national_id=s.NATIONAL_ID
  );

