WITH unioned_synapse_consumption AS (
    {{ dbt_utils.union_relations(
        relations=[
            ref('consumption_synapse_1gb_delta'), 
            ref('consumption_synapse_1gb_parquet_external'), 
            ref('consumption_synapse_1gb_parquet_openrowset'),
            ref('consumption_synapse_10gb_delta'),
            ref('consumption_synapse_10gb_parquet_external')
            
        ],
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
        l.RequestID AS request_id,
        l.SubmitTime AS submit_date,
        l.Duration AS duration,
        l.Submitter AS submitter
    FROM unioned_synapse_consumption l

)

SELECT 
    c.source_file_name,
    replace(
            c.source_file_name,
            'consumption_',
            ''
            ) AS log_file_name,
    c.submitter,
    SUM(c.data_processed) / 1000000 AS data_processed_sum_tb,
    SUM(c.duration) AS duration_sum
FROM renamed_consumption c
GROUP BY c.source_file_name, c.submitter

