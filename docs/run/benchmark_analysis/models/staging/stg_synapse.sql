create or replace view dev_benchmark.stg_synapse
  
  as
    





        (
            select

                cast('dev_benchmark_raw.synapse_1gb_delta_optimized' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

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
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

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
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

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
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

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
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.synapse_1gb_parquet_openrowset
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.synapse_10gb_delta_optimized' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.synapse_10gb_delta_optimized
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.synapse_10gb_delta_partitioned_optimized' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.synapse_10gb_delta_partitioned_optimized
        )

        union all
        

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

        
