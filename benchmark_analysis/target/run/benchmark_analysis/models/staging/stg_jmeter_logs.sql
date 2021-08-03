create or replace view dev_benchmark.stg_jmeter_logs
  
  as
    

WITH databricks_logs AS (
    

        (
            select

                cast('dev_benchmark_raw.databricks_analytics_10gb_delta_2xsmall' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.databricks_analytics_10gb_delta_2xsmall
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.databricks_analytics_10gb_delta_partitioned_2xsmall' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.databricks_analytics_10gb_delta_partitioned_2xsmall
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.databricks_analytics_10gb_delta_partitioned_small' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.databricks_analytics_10gb_delta_partitioned_small
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.databricks_analytics_10gb_delta_partitioned_xsmall' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.databricks_analytics_10gb_delta_partitioned_xsmall
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.databricks_analytics_10gb_delta_small' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.databricks_analytics_10gb_delta_small
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.databricks_analytics_10gb_delta_xsmall' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.databricks_analytics_10gb_delta_xsmall
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.databricks_analytics_10gb_parquet_2xsmall' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.databricks_analytics_10gb_parquet_2xsmall
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.databricks_analytics_10gb_parquet_partitioned_2xsmall' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.databricks_analytics_10gb_parquet_partitioned_2xsmall
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.databricks_analytics_10gb_parquet_partitioned_small' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.databricks_analytics_10gb_parquet_partitioned_small
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.databricks_analytics_10gb_parquet_partitioned_xsmall' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.databricks_analytics_10gb_parquet_partitioned_xsmall
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.databricks_analytics_10gb_parquet_small' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.databricks_analytics_10gb_parquet_small
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.databricks_analytics_10gb_parquet_xsmall' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.databricks_analytics_10gb_parquet_xsmall
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.databricks_analytics_1gb_delta_2xsmall' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.databricks_analytics_1gb_delta_2xsmall
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.databricks_analytics_1gb_delta_small' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.databricks_analytics_1gb_delta_small
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.databricks_analytics_1gb_delta_xsmall' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.databricks_analytics_1gb_delta_xsmall
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.databricks_analytics_1tb_delta_large' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.databricks_analytics_1tb_delta_large
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.databricks_analytics_1tb_delta_medium' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.databricks_analytics_1tb_delta_medium
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.databricks_analytics_1tb_delta_partitioned_large' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.databricks_analytics_1tb_delta_partitioned_large
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.databricks_analytics_1tb_delta_partitioned_medium' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.databricks_analytics_1tb_delta_partitioned_medium
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.databricks_analytics_1tb_delta_partitioned_small' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.databricks_analytics_1tb_delta_partitioned_small
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.databricks_analytics_1tb_delta_small' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.databricks_analytics_1tb_delta_small
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.databricks_analytics_1tb_parquet_large' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.databricks_analytics_1tb_parquet_large
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.databricks_analytics_1tb_parquet_medium' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.databricks_analytics_1tb_parquet_medium
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.databricks_analytics_1tb_parquet_small' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.databricks_analytics_1tb_parquet_small
        )

        

),
synapse_logs AS (
    

        (
            select

                cast('dev_benchmark_raw.synapse_10gb_delta' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.synapse_10gb_delta
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.synapse_10gb_delta_openrowset' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.synapse_10gb_delta_openrowset
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.synapse_10gb_delta_partitioned_openrowset' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.synapse_10gb_delta_partitioned_openrowset
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.synapse_10gb_parquet_external' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.synapse_10gb_parquet_external
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.synapse_10gb_parquet_openrowset' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.synapse_10gb_parquet_openrowset
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.synapse_10gb_parquet_partitioned_external' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.synapse_10gb_parquet_partitioned_external
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.synapse_10gb_parquet_partitioned_openrowset' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.synapse_10gb_parquet_partitioned_openrowset
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.synapse_1gb_delta_openrowset' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.synapse_1gb_delta_openrowset
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.synapse_1gb_parquet_external' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.synapse_1gb_parquet_external
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.synapse_1gb_parquet_openrowset' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.synapse_1gb_parquet_openrowset
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.synapse_1tb_delta_openrowset' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.synapse_1tb_delta_openrowset
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.synapse_1tb_parquet_openrowset' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.synapse_1tb_parquet_openrowset
        )

        

),
unioned_logs (
    SELECT * FROM databricks_logs
    UNION ALL
    SELECT * FROM synapse_logs
),
logs_with_source_file_info(
    SELECT 
        u.*,
        lcase(replace(u._dbt_source_relation,'dev_benchmark_raw.','')) AS source_file_name
    FROM unioned_logs u
)


SELECT
    l.timeStamp as log_id,
    date_format(timestamp_millis(l.timeStamp), 'yyyy-MM-dd HH:mm:ss.SSS' ) as date_time,
    l.label AS query_label,
    l.elapsed AS elapsed_ms,
    l.elapsed / 1000 AS elapsed_sec,
    l.elapsed / 1000 / 60 AS elapsed_min,
    l.elapsed / 1000 / 3600 AS elapsed_hour,
    like(l.source_file_name, '%partitioned%') AS is_partitioned, 
    like(l.source_file_name, '%parquet%') AS is_parquet, 
    regexp_extract(
        l.source_file_name, 
        '([0-9]+gb|[0-9]+tb)', 1) 
        AS data_size,  
    regexp_extract(
        l.source_file_name,
        '^([^_]+)', 1) 
        AS technology_name,
    l.success,
    l.threadName AS jmeter_thread_name,
    l.source_file_name
FROM logs_with_source_file_info l
