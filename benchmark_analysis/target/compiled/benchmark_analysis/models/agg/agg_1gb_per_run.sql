




    
   
    SELECT
        l.source_file_name,
        SUM(l.elapsed_min) AS elapsed_min_sum,
        MIN(l.date_time) AS run_start_time,
        l.run_id,
        
    current_timestamp::
    timestamp

 AS dbt_execution_date
    FROM dev_benchmark.fact_performance_logs l
    WHERE l.data_size == '1gb'
    GROUP BY l.source_file_name, l.run_id

    
