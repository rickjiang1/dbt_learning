SELECT
c.*
FROM {{ref ('Customer_stg')}} C LEFT JOIN
        {{ref ('Orders_stg')}} O ON c.customer_id=O.CUSTOMER_ID
