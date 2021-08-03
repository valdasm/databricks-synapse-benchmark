create or replace view dev_benchmark.stg_synapse_consumption
  
  as
    

WITH unioned_synapse_consumption AS (
    

        (
            select

                cast('dev_benchmark_raw.consumption_synapse_10gb_delta' as 
    string
) as _dbt_source_relation,
                
                    cast(`RequestID` as long) as `RequestID` ,
                    cast(`SubmitTime` as string) as `SubmitTime` ,
                    cast(`Duration` as string) as `Duration` ,
                    cast(`DataProcessed` as string) as `DataProcessed` ,
                    cast(`Submitter` as string) as `Submitter` ,
                    cast(`Status` as string) as `Status` 

            from dev_benchmark_raw.consumption_synapse_10gb_delta
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.consumption_synapse_10gb_delta_openrowset' as 
    string
) as _dbt_source_relation,
                
                    cast(`RequestID` as long) as `RequestID` ,
                    cast(`SubmitTime` as string) as `SubmitTime` ,
                    cast(`Duration` as string) as `Duration` ,
                    cast(`DataProcessed` as string) as `DataProcessed` ,
                    cast(`Submitter` as string) as `Submitter` ,
                    cast(`Status` as string) as `Status` 

            from dev_benchmark_raw.consumption_synapse_10gb_delta_openrowset
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.consumption_synapse_10gb_delta_partitioned_openrowset' as 
    string
) as _dbt_source_relation,
                
                    cast(`RequestID` as long) as `RequestID` ,
                    cast(`SubmitTime` as string) as `SubmitTime` ,
                    cast(`Duration` as string) as `Duration` ,
                    cast(`DataProcessed` as string) as `DataProcessed` ,
                    cast(`Submitter` as string) as `Submitter` ,
                    cast(`Status` as string) as `Status` 

            from dev_benchmark_raw.consumption_synapse_10gb_delta_partitioned_openrowset
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.consumption_synapse_10gb_parquet_external' as 
    string
) as _dbt_source_relation,
                
                    cast(`RequestID` as long) as `RequestID` ,
                    cast(`SubmitTime` as string) as `SubmitTime` ,
                    cast(`Duration` as string) as `Duration` ,
                    cast(`DataProcessed` as string) as `DataProcessed` ,
                    cast(`Submitter` as string) as `Submitter` ,
                    cast(`Status` as string) as `Status` 

            from dev_benchmark_raw.consumption_synapse_10gb_parquet_external
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.consumption_synapse_10gb_parquet_openrowset' as 
    string
) as _dbt_source_relation,
                
                    cast(`RequestID` as long) as `RequestID` ,
                    cast(`SubmitTime` as string) as `SubmitTime` ,
                    cast(`Duration` as string) as `Duration` ,
                    cast(`DataProcessed` as string) as `DataProcessed` ,
                    cast(`Submitter` as string) as `Submitter` ,
                    cast(`Status` as string) as `Status` 

            from dev_benchmark_raw.consumption_synapse_10gb_parquet_openrowset
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.consumption_synapse_10gb_parquet_partitioned_external' as 
    string
) as _dbt_source_relation,
                
                    cast(`RequestID` as long) as `RequestID` ,
                    cast(`SubmitTime` as string) as `SubmitTime` ,
                    cast(`Duration` as string) as `Duration` ,
                    cast(`DataProcessed` as string) as `DataProcessed` ,
                    cast(`Submitter` as string) as `Submitter` ,
                    cast(`Status` as string) as `Status` 

            from dev_benchmark_raw.consumption_synapse_10gb_parquet_partitioned_external
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.consumption_synapse_10gb_parquet_partitioned_openrowset' as 
    string
) as _dbt_source_relation,
                
                    cast(`RequestID` as long) as `RequestID` ,
                    cast(`SubmitTime` as string) as `SubmitTime` ,
                    cast(`Duration` as string) as `Duration` ,
                    cast(`DataProcessed` as string) as `DataProcessed` ,
                    cast(`Submitter` as string) as `Submitter` ,
                    cast(`Status` as string) as `Status` 

            from dev_benchmark_raw.consumption_synapse_10gb_parquet_partitioned_openrowset
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.consumption_synapse_1gb_delta_openrowset' as 
    string
) as _dbt_source_relation,
                
                    cast(`RequestID` as long) as `RequestID` ,
                    cast(`SubmitTime` as string) as `SubmitTime` ,
                    cast(`Duration` as string) as `Duration` ,
                    cast(`DataProcessed` as string) as `DataProcessed` ,
                    cast(`Submitter` as string) as `Submitter` ,
                    cast(`Status` as string) as `Status` 

            from dev_benchmark_raw.consumption_synapse_1gb_delta_openrowset
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.consumption_synapse_1gb_parquet_external' as 
    string
) as _dbt_source_relation,
                
                    cast(`RequestID` as long) as `RequestID` ,
                    cast(`SubmitTime` as string) as `SubmitTime` ,
                    cast(`Duration` as string) as `Duration` ,
                    cast(`DataProcessed` as string) as `DataProcessed` ,
                    cast(`Submitter` as string) as `Submitter` ,
                    cast(`Status` as string) as `Status` 

            from dev_benchmark_raw.consumption_synapse_1gb_parquet_external
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.consumption_synapse_1gb_parquet_openrowset' as 
    string
) as _dbt_source_relation,
                
                    cast(`RequestID` as long) as `RequestID` ,
                    cast(`SubmitTime` as string) as `SubmitTime` ,
                    cast(`Duration` as string) as `Duration` ,
                    cast(`DataProcessed` as string) as `DataProcessed` ,
                    cast(`Submitter` as string) as `Submitter` ,
                    cast(`Status` as string) as `Status` 

            from dev_benchmark_raw.consumption_synapse_1gb_parquet_openrowset
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.consumption_synapse_1tb_delta_openrowset' as 
    string
) as _dbt_source_relation,
                
                    cast(`RequestID` as long) as `RequestID` ,
                    cast(`SubmitTime` as string) as `SubmitTime` ,
                    cast(`Duration` as string) as `Duration` ,
                    cast(`DataProcessed` as string) as `DataProcessed` ,
                    cast(`Submitter` as string) as `Submitter` ,
                    cast(`Status` as string) as `Status` 

            from dev_benchmark_raw.consumption_synapse_1tb_delta_openrowset
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.consumption_synapse_1tb_parquet_openrowset' as 
    string
) as _dbt_source_relation,
                
                    cast(`RequestID` as long) as `RequestID` ,
                    cast(`SubmitTime` as string) as `SubmitTime` ,
                    cast(`Duration` as string) as `Duration` ,
                    cast(`DataProcessed` as string) as `DataProcessed` ,
                    cast(`Submitter` as string) as `Submitter` ,
                    cast(`Status` as string) as `Status` 

            from dev_benchmark_raw.consumption_synapse_1tb_parquet_openrowset
        )

        

),
renamed_consumption AS (
    SELECT 
        lcase(
            replace(
                l._dbt_source_relation,
                'dev_benchmark_raw.',''
                )
            ) AS source_file_name,
        regexp_extract(
            l.DataProcessed,
            '(^[0-9]+\.[0-9]+)', 1) 
            AS data_processed,
        regexp_extract(
            lcase(l.DataProcessed), 
            '(mb|gb|tb)', 1) 
            AS data_size_abbr, 
        l.RequestID AS request_id,
        l.SubmitTime AS submit_date,
        l.Duration AS duration,
        l.Submitter AS submitter
    FROM unioned_synapse_consumption l

),
unified_data_size AS (
    SELECT 
        c.*,
        CASE data_size_abbr 
            WHEN 'mb' THEN data_processed / 1000000
            WHEN 'gb' THEN data_processed / 1000
            ELSE data_processed 
        END AS data_processed_unified
    FROM renamed_consumption c
)

SELECT 
    c.source_file_name,
    replace(
            c.source_file_name,
            'consumption_',
            ''
            ) AS log_file_name,
    c.submitter,
    SUM(c.data_processed_unified) AS data_processed_sum_tb,
    SUM(c.duration) AS duration_sum
FROM unified_data_size c
GROUP BY c.source_file_name, c.submitter
