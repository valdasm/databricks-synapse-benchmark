{% set seed_database_postfix = 'raw' %}

WITH unioned_synapse_consumption AS (
    {{ dbt_utils.union_relations(
        relations= get_dbr_relations_by_pattern(
            'consumption_synapse_*', 
            schema=target.schema ~ '_' ~ seed_database_postfix),
        include=['RequestID', 'SubmitTime', 'Duration', 'DataProcessed', 'Submitter', 'Status']
    ) }}

),
renamed_consumption AS (
    SELECT 
        lcase(
            replace(
                l._dbt_source_relation,
                '{{ target.schema ~ "_raw." }}',''
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

