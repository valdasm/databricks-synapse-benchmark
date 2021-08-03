
      create or replace table dev_benchmark.agg_results_1gb
    
    
    using delta
    
    
    
    
    
    as
      

WITH databricks_log_subset AS (
    SELECT
        l._dbt_source_relation,
        l.jmeter_thread_name,
        l.date_time,
        SUM(elapsed_hour) as elapsed_hour_sum,
        l.run_id,
        l.cluster_type
        
    FROM dev_benchmark.fact_performance_logs l
    WHERE l.data_size == '1gb' AND technology_name == 'databricks'
    GROUP BY l._dbt_source_relation
),
databricks_pricing AS (
    SELECT 
        s.*,
        s.elapsed_hour_sum * c.hourly_combined_cost AS cost
    FROM databricks_log_subset s
    JOIN dev_benchmark.stg_databricks_clusters c ON c.cluster_type = s.cluster_type
)


SELECT 
    p.*
FROM databricks_pricing p