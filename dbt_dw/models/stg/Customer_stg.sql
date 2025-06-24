
{{
    config( materialized='incremental',
            unique_key='Customer_ID')
}}

SELECT
 C_CUSTKEY AS Customer_ID
,C_NAME as CUSTOMER_NAME
,C_ADDRESS AS CUSTOMER_ADDRESS
,C_NATIONKEY AS NATIONID
,C_PHONE AS CUSTOMERPHONE
,C_ACCTBAL AS ACCOUNTBALANCE
,C_MKTSEGMENT AS SEGMENTATION
,C_COMMENT AS "COMMENT"
,CURRENT_TIMESTAMP AS UPDATE_DT
,'Testing' AS Testing
FROM 
{{source ('landing','CUSTOMER_SRC') }}


{% if is_incremental() %}
/*where C_CUSTKEY >= (select max(Customer_ID) from {{this}})*/
{% endif %}
