





SELECT 
    l.*,
    ROW_NUMBER() OVER(PARTITION BY l.query_label, l.source_file_name ORDER BY l.date_time ASC) AS run_id,
    
    current_timestamp::
    timestamp

 AS dbt_execution_date
FROM dev_benchmark.stg_jmeter_logs l
INNER JOIN dev_benchmark.queries_snapshot q ON l.query_label = q.label
WHERE q.is_included_in_perf_analysis == 'TRUE' 
    AND q.dbt_valid_to IS NULL

ORDER BY l.source_file_name, l.query_label, l.date_time