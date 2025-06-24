{% test is_float(model, column_name) %}
    WITH column_info AS (
        SELECT 
            table_catalog,
            table_schema,
            table_name,
            column_name,
            data_type
        FROM information_schema.columns
        WHERE 
            table_name = '{{ model.name }}'
            AND column_name ILIKE '{{ column_name }}'
            AND table_schema = '{{ model.schema }}'
    )

    SELECT '{{ column_name }}' AS column_being_tested
    FROM column_info
    WHERE data_type NOT IN ('NUMBER', 'FLOAT', 'DECIMAL', 'DOUBLE')
{% endtest %}
