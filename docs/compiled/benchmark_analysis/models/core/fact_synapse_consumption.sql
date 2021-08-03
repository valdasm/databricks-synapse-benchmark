






SELECT 
    l._dbt_source_file_name,
    l.RequestID AS request_id,
    l.SubmitTime AS submit_date,
    l.Duration AS duration,
    regexp_extract(
        l.DataProcessed,
        '(^[0-9]+\.[0-9]+)', 1) 
        AS data_processed,
    l.Submitter AS submitter,    
    
    current_timestamp::
    timestamp

 AS dbt_execution_date
FROM dev_benchmark.stg_synapse_consumption l
ORDER BY l._dbt_source_file_name, l.RequestID