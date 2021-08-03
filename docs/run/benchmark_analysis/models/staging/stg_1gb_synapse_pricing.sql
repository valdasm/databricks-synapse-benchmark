create or replace view dev_benchmark.stg_1gb_synapse_pricing
  
  as
    

        (
            select

                cast('dev_benchmark_raw.synapse_1gb_delta_pricing' as 
    string
) as _dbt_source_relation,
                
                    cast(`RequestID` as long) as `RequestID` ,
                    cast(`SubmitTime` as string) as `SubmitTime` ,
                    cast(`Duration` as string) as `Duration` ,
                    cast(`DataProcessed` as long) as `DataProcessed` ,
                    cast(`Submitter` as string) as `Submitter` ,
                    cast(`Status` as string) as `Status` ,
                    cast(`SessionID` as string) as `SessionID` 

            from dev_benchmark_raw.synapse_1gb_delta_pricing
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.synapse_1gb_parquet_external_pricing' as 
    string
) as _dbt_source_relation,
                
                    cast(`RequestID` as long) as `RequestID` ,
                    cast(`SubmitTime` as string) as `SubmitTime` ,
                    cast(`Duration` as string) as `Duration` ,
                    cast(`DataProcessed` as long) as `DataProcessed` ,
                    cast(`Submitter` as string) as `Submitter` ,
                    cast(`Status` as string) as `Status` ,
                    cast(`SessionID` as string) as `SessionID` 

            from dev_benchmark_raw.synapse_1gb_parquet_external_pricing
        )

        
