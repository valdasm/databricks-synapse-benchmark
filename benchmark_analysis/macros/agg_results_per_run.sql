{% macro agg_results_per_run(data_size) %}
    
   
    SELECT
        SUM(l.elapsed_min) AS elapsed_min_sum,
        MIN(l.date_time) AS run_start_time,
        l.technology_name,
        l.run_id,
        r.friendly_name,
        l.source_file_name,
        l.is_partitioned,
        {{ dbt_utils.current_timestamp() }} AS dbt_execution_date
    FROM {{ ref('fact_performance_logs') }} l
    JOIN {{ ref('stg_run_info') }} r ON l.source_file_name = r.run_file_name
    WHERE l.data_size == '{{ data_size }}'
    GROUP BY l.technology_name, l.source_file_name, r.friendly_name, l.run_id, l.is_partitioned

    
{% endmacro %}