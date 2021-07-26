 
{# {% set synapse_relations = dbt_utils.get_relations_by_pattern(target.schema, 'synapse_%') %} #}
{# Custom macro implementation needed #}

WITH unioned_logs AS (
    {{ dbt_utils.union_relations(
        relations=[
            ref('databricks_analytics_1gb_2xsmall'), 
            ref('databricks_analytics_1gb_xsmall'), 
            ref('databricks_analytics_1gb_small'),
            ref('databricks_analytics_10gb_2xsmall'),
            ref('databricks_analytics_10gb_xsmall'),
            ref('databricks_analytics_1tb_small'),
            ref('databricks_analytics_1tb_medium'),
            ref('databricks_analytics_1tb_large'),
            ref('synapse_1gb_delta_optimized'), 
            ref('synapse_1gb_delta'), 
            ref('synapse_1gb_parquet_external'),
            ref('synapse_1gb_parquet_openrowset_optimized'), 
            ref('synapse_1gb_parquet_openrowset'),
            ref('synapse_10gb_delta_optimized'), 
            ref('synapse_10gb_delta_partitioned_optimized'), 
            ref('synapse_10gb_delta'), 
            ref('synapse_10gb_parquet_external'),
            ref('synapse_10gb_parquet_partitioned_openrowset'), 
            ref('synapse_10gb_parquet_openrowset')
        ],
        include=['timeStamp', 'elapsed', 'label', 'success', 'threadName']
    ) }}

),
logs_with_source_file_info(
    SELECT 
        u.*,
        lcase(replace(u._dbt_source_relation,'{{ target.schema ~ "_raw." }}','')) AS source_file_name
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
    regexp_extract(
        l.source_file_name, 
        '([0-9]*gb|tb)', 1) 
        AS data_size,  
    regexp_extract(
        l.source_file_name,
        '^([^_]+)', 1) 
        AS technology_name,
    l.success,
    l.threadName AS jmeter_thread_name,
    l.source_file_name
FROM logs_with_source_file_info l

