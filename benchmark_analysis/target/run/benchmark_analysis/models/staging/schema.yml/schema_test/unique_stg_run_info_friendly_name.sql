select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    friendly_name,
    count(*) as n_records

from dev_benchmark.stg_run_info
where friendly_name is not null
group by friendly_name
having count(*) > 1



      
    ) dbt_internal_test