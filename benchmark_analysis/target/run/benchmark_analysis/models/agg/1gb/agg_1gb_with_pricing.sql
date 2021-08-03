create or replace view dev_benchmark.agg_1gb_with_pricing
  
  as
    
    
    WITH logs AS (
        
    
   
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

    

    ),
    databricks_logs AS (
        SELECT 
            d.*,
            d.elapsed_min_sum / 60 * c.hourly_combined_cost AS cost_usd
        FROM logs d
        LEFT JOIN dev_benchmark.stg_databricks_clusters c ON c.cluster_type = regexp_extract(lcase(d.source_file_name), '([^_]+)$', 1) 
        WHERE d.technology_name == 'databricks'
    ),
    synapse_logs AS (
        SELECT 
            s.*,
            c.data_processed_sum_tb / s.runs_number * 5 AS cost_usd
        FROM logs s
        LEFT JOIN dev_benchmark.stg_synapse_consumption c ON c.log_file_name = s.source_file_name
        WHERE s.technology_name == 'synapse'
    )

    SELECT 
        *
    FROM databricks_logs
    UNION
    SELECT 
        *
    FROM synapse_logs

    

