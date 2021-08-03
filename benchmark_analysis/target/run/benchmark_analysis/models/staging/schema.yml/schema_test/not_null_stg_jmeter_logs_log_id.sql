select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select *
from dev_benchmark.stg_jmeter_logs
where log_id is null



      
    ) dbt_internal_test