
    
    

select
    id,
    count(*) as n_records

from dev_benchmark.stg_run_info
where id is not null
group by id
having count(*) > 1


