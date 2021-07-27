{% macro agg_results_per_thread(data_size, is_partitioned) %}
    
   
    SELECT
        SUM(l.elapsed_min) / MAX(l.run_id) AS elapsed_min_sum,
        MIN(l.date_time) AS run_start_time,
        {{ dbt_utils.current_timestamp() }} AS dbt_execution_date,
        l.technology_name,
        MAX(l.run_id) AS runs_number,
        r.friendly_name,
        l.source_file_name
    FROM {{ ref('fact_performance_logs') }} l
    JOIN {{ ref('stg_run_info') }} r ON l.source_file_name = r.run_file_name
    WHERE l.data_size == '{{ data_size }}' AND l.is_partitioned == '{{ is_partitioned }}'
    GROUP BY l.technology_name, l.source_file_name, r.friendly_name

    
{% endmacro %}