{% macro agg_results_per_thread_with_pricing(data_size) %}
    
    WITH logs AS (
        {{ agg_results_per_thread(data_size) }}
    ),
    databricks_logs AS (
        SELECT 
            d.*,
            d.elapsed_min_sum / 60 * c.hourly_combined_cost AS cost_usd
        FROM logs d
        LEFT JOIN {{ ref('stg_databricks_clusters') }} c ON c.cluster_type = regexp_extract(lcase(d.source_file_name), '([^_]+)$', 1) 
        WHERE d.technology_name == 'databricks'
    ),
    synapse_logs AS (
        SELECT 
            s.*,
            c.data_processed_sum_tb / s.runs_number * 5 AS cost_usd
        FROM logs s
        LEFT JOIN {{ ref('stg_synapse_consumption') }} c ON c.log_file_name = s.source_file_name
        WHERE s.technology_name == 'synapse'
    )

    SELECT 
        *
    FROM databricks_logs
    UNION
    SELECT 
        *
    FROM synapse_logs

    
{% endmacro %}