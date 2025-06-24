SELECT
n.*
FROM {{ref ('Nation_stg')}} n LEFT JOIN
        {{ref ('Supplier_stg')}} s ON n.national_id=s.NATIONAL_ID