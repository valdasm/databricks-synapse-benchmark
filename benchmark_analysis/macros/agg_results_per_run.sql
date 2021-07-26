{% macro agg_results_per_run(data_size) %}
    
   
    SELECT
        l.source_file_name,
        SUM(l.elapsed_min) AS elapsed_min_sum,
        MIN(l.date_time) AS run_start_time,
        l.run_id,
        {{ dbt_utils.current_timestamp() }} AS dbt_execution_date
    FROM {{ ref('fact_performance_logs') }} l
    WHERE l.data_size == '{{ data_size }}'
    GROUP BY l.source_file_name, l.run_id

    
{% endmacro %}