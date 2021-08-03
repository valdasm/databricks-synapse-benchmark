
    
    

select
    friendly_name,
    count(*) as n_records

from dev_benchmark.stg_run_info
where friendly_name is not null
group by friendly_name
having count(*) > 1


