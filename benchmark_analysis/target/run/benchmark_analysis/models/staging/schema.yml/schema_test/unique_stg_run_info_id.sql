select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    id,
    count(*) as n_records

from dev_benchmark.stg_run_info
where id is not null
group by id
having count(*) > 1



      
    ) dbt_internal_test