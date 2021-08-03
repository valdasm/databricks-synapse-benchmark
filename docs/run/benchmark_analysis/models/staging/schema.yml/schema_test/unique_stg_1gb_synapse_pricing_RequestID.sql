select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    RequestID,
    count(*) as n_records

from dev_benchmark.stg_1gb_synapse_pricing
where RequestID is not null
group by RequestID
having count(*) > 1



      
    ) dbt_internal_test