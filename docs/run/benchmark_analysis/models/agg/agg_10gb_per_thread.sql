
      create or replace table dev_benchmark.agg_10gb_per_thread
    
    
    using delta
    
    
    
    
    
    as
      



    
   
    SELECT
        l.source_file_name,
        SUM(l.elapsed_min) / MAX(l.run_id) AS elapsed_min_sum,
        MIN(l.date_time) AS run_start_time,
        
    current_timestamp::
    timestamp

 AS dbt_execution_date,
        l.technology_name,
        MAX(l.run_id) AS runs_number
    FROM dev_benchmark.fact_performance_logs l
    WHERE l.data_size == '10gb'
    GROUP BY l.technology_name, l.source_file_name

    
