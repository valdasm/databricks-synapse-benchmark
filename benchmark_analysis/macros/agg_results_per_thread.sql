{% macro agg_results_per_thread(data_size) %}
    
   
    SELECT
        l.source_file_name,
        SUM(l.elapsed_min) / MAX(l.run_id) AS elapsed_min_sum,
        MIN(l.date_time) AS run_start_time,
        {{ dbt_utils.current_timestamp() }} AS dbt_execution_date,
        l.technology_name,
        MAX(l.run_id) AS runs_number
    FROM {{ ref('fact_performance_logs') }} l
    WHERE l.data_size == '{{ data_size }}'
    GROUP BY l.technology_name, l.source_file_name

    
{% endmacro %}