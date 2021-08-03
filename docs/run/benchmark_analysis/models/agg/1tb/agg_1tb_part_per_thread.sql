create or replace view dev_benchmark.agg_1tb_part_per_thread
  
  as
    
    
   
    SELECT
        SUM(l.elapsed_min) / MAX(l.run_id) AS elapsed_min_sum,
        MIN(l.date_time) AS run_start_time,
        
    current_timestamp::
    timestamp

 AS dbt_execution_date,
        l.technology_name,
        MAX(l.run_id) AS runs_number,
        r.friendly_name,
        l.source_file_name
    FROM dev_benchmark.fact_performance_logs l
    JOIN dev_benchmark.stg_run_info r ON l.source_file_name = r.run_file_name
    WHERE l.data_size == '1tb' AND l.is_partitioned == 'False'
    GROUP BY l.technology_name, l.source_file_name, r.friendly_name

    

