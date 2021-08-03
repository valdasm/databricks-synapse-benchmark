
    
   
    SELECT
        SUM(l.elapsed_min) / MAX(l.run_id) AS elapsed_min_sum,
        MIN(l.date_time) AS run_start_time,
        l.technology_name,
        MAX(l.run_id) AS runs_number,
        r.friendly_name,
        l.source_file_name,
        l.is_partitioned,
        CASE l.is_partitioned
            WHEN true THEN concat(l.technology_name, '-partitioned')  
            ELSE concat(l.technology_name, '-non-partitioned')
        END AS run_category,
        
    current_timestamp::
    timestamp

 AS dbt_execution_date
    FROM dev_benchmark.fact_performance_logs l
    JOIN dev_benchmark.stg_run_info r ON l.source_file_name = r.run_file_name
    WHERE l.data_size == '1gb'
    GROUP BY l.technology_name, l.source_file_name, r.friendly_name, l.is_partitioned

    
