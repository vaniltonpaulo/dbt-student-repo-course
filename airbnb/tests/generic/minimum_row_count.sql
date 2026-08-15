{% test minimum_row_count(model, min_row_count) %}
 -- instead of the pipeline fail it just warn
{{ config(severity='warn') }}
SELECT
    COUNT(*) AS cnt
FROM
    {{ model }}
HAVING
    COUNT(*) < {{ min_row_count }}

{% endtest %}