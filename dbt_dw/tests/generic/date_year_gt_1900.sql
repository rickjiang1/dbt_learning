{% test date_year_gt_1900(model, column_name) %}
    SELECT {{ column_name }}
    FROM {{ model }}
    WHERE TRY_CAST({{ column_name }} AS DATE) IS NULL
       OR EXTRACT(YEAR FROM TRY_CAST({{ column_name }} AS DATE)) <= 1900
       AND {{ column_name }} IS NOT NULL
{% endtest %}