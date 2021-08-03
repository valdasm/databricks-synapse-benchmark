create or replace view dev_benchmark.agg_10gb_part_per_run
  
  as
    
    
   
    SELECT
        SUM(l.elapsed_min) AS elapsed_min_sum,
        MIN(l.date_time) AS run_start_time,
        l.run_id,
        r.friendly_name,
        l.source_file_name,
        
    current_timestamp::
    timestamp

 AS dbt_execution_date
    FROM dev_benchmark.fact_performance_logs l
    JOIN dev_benchmark.stg_run_info r ON l.source_file_name = r.run_file_name
    WHERE l.data_size == '10gb' AND l.is_partitioned == 'True'
    GROUP BY l.source_file_name, r.friendly_name, l.run_id

    
