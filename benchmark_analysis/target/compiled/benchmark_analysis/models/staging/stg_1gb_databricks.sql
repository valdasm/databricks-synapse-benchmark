WITH unioned_logs AS (
    

        (
            select

                cast('dev_benchmark_raw.sql_analytics_1gb_2xsmall' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`responseCode` as long) as `responseCode` ,
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

            from dev_benchmark_raw.sql_analytics_1gb_2xsmall
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.sql_analytics_1gb_xsmall' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`responseCode` as long) as `responseCode` ,
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

            from dev_benchmark_raw.sql_analytics_1gb_xsmall
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.sql_analytics_1gb_small' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`responseCode` as long) as `responseCode` ,
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

            from dev_benchmark_raw.sql_analytics_1gb_small
        )

        

)

SELECT 
    date_format(timestamp_millis(timeStamp), 'yyyy-MM-dd HH:mm:ss.SSS' ) as date_time,
    elapsed,
    label,
    success,
    threadName as jmeter_thread_name,
    regexp_extract(_dbt_source_relation, '([^_]+)$', 1) AS cluster_type,    
    ROW_NUMBER() OVER(PARTITION BY l.label, l.threadName ORDER BY l.timeStamp ASC) AS run_id,
    _dbt_source_relation 
FROM unioned_logs l 



--  SELECT l.elapsed / 1000 / 60 AS duration, 'sql_analytics_10gb_2xsmall' AS thread, ROW_NUMBER() OVER(PARTITION BY l.label ORDER BY l.timeStamp ASC) AS runId, l.label, l.threadName from default.sql_analytics_10gb_2xsmall l
--     UNION
--     SELECT l.elapsed / 1000 / 60 AS duration, 'sql_analytics_10gb_xsmall' AS thread, ROW_NUMBER() OVER(PARTITION BY l.label ORDER BY l.timeStamp ASC) AS runId, l.label, l.threadName from default.sql_analytics_10gb_xsmall l

    
-- SELECT 
--     l.*
-- FROM logs AS l
-- INNER JOIN dev_benchmark_raw.allowed_queries a on l.label = a.label
-- ORDER BY thread, label, runId