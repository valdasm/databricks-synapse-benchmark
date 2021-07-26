{# 
{{ config(
    
    materialized='table',
    incremental_strategy='insert_overwrite',
    file_format='delta'
    
) }}

WITH databricks_log_subset AS (
    SELECT
        l._dbt_source_relation,
        SUM(elapsed_hour) as elapsed_hour_sum,
        l.run_id,
        regexp_extract(lcase(l._dbt_source_relation), '([^_]+)$', 1) AS cluster_type
        
    FROM {{ ref('fact_performance_logs') }} l
    WHERE l.data_size == '1gb' AND technology_name == 'databricks'
    GROUP BY l._dbt_source_relation, l.run_id
),
databricks_pricing AS (
    SELECT 
        s.*,
        s.elapsed_hour_sum * c.hourly_combined_cost AS cost
    FROM databricks_log_subset s
    JOIN {{ ref('stg_databricks_clusters') }} c ON c.cluster_type = s.cluster_type
)


SELECT 
    p.*
FROM databricks_pricing p #}
