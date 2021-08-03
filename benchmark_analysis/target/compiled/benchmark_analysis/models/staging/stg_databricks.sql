





        (
            select

                cast('dev_benchmark_raw.databricks_analytics_1gb_2xsmall' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.databricks_analytics_1gb_2xsmall
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.databricks_analytics_1gb_xsmall' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.databricks_analytics_1gb_xsmall
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.databricks_analytics_1gb_small' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.databricks_analytics_1gb_small
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.databricks_analytics_10gb_2xsmall' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.databricks_analytics_10gb_2xsmall
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.databricks_analytics_10gb_xsmall' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.databricks_analytics_10gb_xsmall
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.databricks_analytics_1tb_small' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.databricks_analytics_1tb_small
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.databricks_analytics_1tb_medium' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.databricks_analytics_1tb_medium
        )

        union all
        

        (
            select

                cast('dev_benchmark_raw.databricks_analytics_1tb_large' as 
    string
) as _dbt_source_relation,
                
                    cast(`timeStamp` as long) as `timeStamp` ,
                    cast(`elapsed` as long) as `elapsed` ,
                    cast(`label` as string) as `label` ,
                    cast(`threadName` as string) as `threadName` ,
                    cast(`success` as boolean) as `success` 

            from dev_benchmark_raw.databricks_analytics_1tb_large
        )

        