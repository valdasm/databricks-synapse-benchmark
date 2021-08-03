
    
    

select
    RequestID,
    count(*) as n_records

from dev_benchmark.stg_10gb_synapse_pricing
where RequestID is not null
group by RequestID
having count(*) > 1

