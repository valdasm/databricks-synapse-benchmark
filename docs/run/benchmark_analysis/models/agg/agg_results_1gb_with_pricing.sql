
      create or replace table dev_benchmark.agg_results_1gb_with_pricing
    
    
    using delta
    
    
    
    
    
    as
      



    
    WITH logs AS (
        
    
   
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

    

    ),
    databricks_logs AS (
        SELECT 
            d.*,
            d.elapsed_min_sum * c.hourly_combined_cost AS cost
        FROM logs d
        JOIN dev_benchmark.stg_databricks_clusters c ON c.cluster_type = regexp_extract(lcase(d._dbt_source_relation), '([^_]+)$', 1) 
        WHERE d.technology_name == 'databricks'
    )

    SELECT 
        *
    FROM databricks_logs

    
