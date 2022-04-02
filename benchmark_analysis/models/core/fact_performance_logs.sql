
{{ config(
    
    materialized='table',
    incremental_strategy='insert_overwrite',
    file_format='delta'
    
) }}

{# location_root='/mnt/vmdatalake/results/', #}
{# Had some issues with SQL Analytics and location. Hence, database was created prior with a specified location #}


SELECT 
    l.*,
    ROW_NUMBER() OVER(PARTITION BY l.query_label, l.source_file_name ORDER BY l.date_time ASC) AS run_id,
    {{ dbt_utils.current_timestamp() }} AS dbt_execution_date
FROM {{ ref('stg_jmeter_logs') }} l
INNER JOIN {{ ref('queries_snapshot') }} q ON l.query_label = q.label
WHERE q.is_included_in_perf_analysis == 'TRUE' 
    AND q.dbt_valid_to IS NULL

ORDER BY l.source_file_name, l.query_label, l.date_time

