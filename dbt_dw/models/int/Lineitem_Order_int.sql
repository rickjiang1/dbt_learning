SELECT
l.*
FROM {{ref ('Lineitem_stg')}} l LEFT JOIN
        {{ref ('Orders_stg')}} O ON l.orderid=O.order_id