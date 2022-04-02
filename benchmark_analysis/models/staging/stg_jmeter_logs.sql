
{% set seed_database_postfix = 'raw' %}

WITH databricks_logs AS (
    {{ dbt_utils.union_relations(
        relations= get_dbr_relations_by_pattern(
            'databricks_analytics*', 
            schema=target.schema ~ '_' ~ seed_database_postfix),
        include=['timeStamp', 'elapsed', 'label', 'success', 'threadName']
    ) }}

),
synapse_logs AS (
    {{ dbt_utils.union_relations(
        relations= get_dbr_relations_by_pattern(
            'synapse*', 
            schema=target.schema ~ '_' ~ seed_database_postfix),
        include=['timeStamp', 'elapsed', 'label', 'success', 'threadName']
    ) }}

),
unioned_logs (
    SELECT * FROM databricks_logs
    UNION ALL
    SELECT * FROM synapse_logs
),
logs_with_source_file_info(
    SELECT 
        u.*,
        lcase(replace(u._dbt_source_relation,'{{ target.schema ~ "_" ~ seed_database_postfix ~ "." }}','')) AS source_file_name
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
