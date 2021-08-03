
    
    

select
    log_id,
    count(*) as n_records

from dev_benchmark.stg_jmeter_logs
where log_id is not null
group by log_id
having count(*) > 1


