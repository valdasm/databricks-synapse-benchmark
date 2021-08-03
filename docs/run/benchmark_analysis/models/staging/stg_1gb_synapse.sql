create or replace view dev_benchmark.stg_1gb_synapse
  
  as
    WITH unioned_logs AS (
    

        (
            select

                cast('dev_benchmark_raw.synapse_1gb_delta_optimized' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`responseCode` as string) as `responseCode` ,
                    cast(`responseMessage` as string) as `responseMessage` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`dataType` as string) as `dataType` ,
                    cast(`success` as boolean) as `success` ,
                    cast(`failureMessage` as long) as `failureMessage` ,
                    cast(`bytes` as long) as `bytes` ,
                    cast(`sentBytes` as long) as `sentBytes` ,
                    cast(`grpThreads` as long) as `grpThreads` ,
                    cast(`allThreads` as long) as `allThreads` ,
                    cast(`URL` as long) as `URL` ,
                    cast(`Latency` as long) as `Latency` ,
                    cast(`IdleTime` as long) as `IdleTime` ,
                    cast(`Connect` as long) as `Connect` 

            from dev_benchmark_raw.synapse_1gb_delta_optimized
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.synapse_1gb_delta' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`responseCode` as string) as `responseCode` ,
                    cast(`responseMessage` as string) as `responseMessage` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`dataType` as string) as `dataType` ,
                    cast(`success` as boolean) as `success` ,
                    cast(`failureMessage` as long) as `failureMessage` ,
                    cast(`bytes` as long) as `bytes` ,
                    cast(`sentBytes` as long) as `sentBytes` ,
                    cast(`grpThreads` as long) as `grpThreads` ,
                    cast(`allThreads` as long) as `allThreads` ,
                    cast(`URL` as long) as `URL` ,
                    cast(`Latency` as long) as `Latency` ,
                    cast(`IdleTime` as long) as `IdleTime` ,
                    cast(`Connect` as long) as `Connect` 

            from dev_benchmark_raw.synapse_1gb_delta
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
                    cast(`responseCode` as string) as `responseCode` ,
                    cast(`responseMessage` as string) as `responseMessage` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`dataType` as string) as `dataType` ,
                    cast(`success` as boolean) as `success` ,
                    cast(`failureMessage` as long) as `failureMessage` ,
                    cast(`bytes` as long) as `bytes` ,
                    cast(`sentBytes` as long) as `sentBytes` ,
                    cast(`grpThreads` as long) as `grpThreads` ,
                    cast(`allThreads` as long) as `allThreads` ,
                    cast(`URL` as long) as `URL` ,
                    cast(`Latency` as long) as `Latency` ,
                    cast(`IdleTime` as long) as `IdleTime` ,
                    cast(`Connect` as long) as `Connect` 

            from dev_benchmark_raw.synapse_1gb_parquet_external
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.synapse_1gb_parquet_openrowset_optimized' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`responseCode` as string) as `responseCode` ,
                    cast(`responseMessage` as string) as `responseMessage` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`dataType` as string) as `dataType` ,
                    cast(`success` as boolean) as `success` ,
                    cast(`failureMessage` as long) as `failureMessage` ,
                    cast(`bytes` as long) as `bytes` ,
                    cast(`sentBytes` as long) as `sentBytes` ,
                    cast(`grpThreads` as long) as `grpThreads` ,
                    cast(`allThreads` as long) as `allThreads` ,
                    cast(`URL` as long) as `URL` ,
                    cast(`Latency` as long) as `Latency` ,
                    cast(`IdleTime` as long) as `IdleTime` ,
                    cast(`Connect` as long) as `Connect` 

            from dev_benchmark_raw.synapse_1gb_parquet_openrowset_optimized
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
                    cast(`responseCode` as string) as `responseCode` ,
                    cast(`responseMessage` as string) as `responseMessage` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`dataType` as string) as `dataType` ,
                    cast(`success` as boolean) as `success` ,
                    cast(`failureMessage` as long) as `failureMessage` ,
                    cast(`bytes` as long) as `bytes` ,
                    cast(`sentBytes` as long) as `sentBytes` ,
                    cast(`grpThreads` as long) as `grpThreads` ,
                    cast(`allThreads` as long) as `allThreads` ,
                    cast(`URL` as long) as `URL` ,
                    cast(`Latency` as long) as `Latency` ,
                    cast(`IdleTime` as long) as `IdleTime` ,
                    cast(`Connect` as long) as `Connect` 

            from dev_benchmark_raw.synapse_1gb_parquet_openrowset
        )

        
)

SELECT 
    date_format(timestamp_millis(timeStamp), 'yyyy-MM-dd HH:mm:ss.SSS' ) as date_time,
    elapsed,
    label,
    success,
    threadName as jmeter_thread_name,
    ROW_NUMBER() OVER(PARTITION BY l.label, l.threadName ORDER BY l.timeStamp ASC) AS run_id,
    _dbt_source_relation 
FROM unioned_logs l
