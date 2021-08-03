
      create or replace table dev_benchmark.agg_results_1gb_split_per_thread
    
    
    using delta
    
    
    
    
    
    as
      




    
   
    SELECT
        l._dbt_source_relation,
        SUM(l.elapsed_min) / MAX(l.run_id) AS elapsed_min_sum,
        MIN(l.date_time) AS run_start_time,
        
    current_timestamp::
    timestamp

 AS dbt_execution_date,
        l.technology_name
    FROM dev_benchmark.fact_performance_logs l
    WHERE l.data_size == '1gb'
    GROUP BY l.technology_name, l._dbt_source_relation

    
