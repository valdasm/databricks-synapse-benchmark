select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select *
from dev_benchmark.stg_run_info
where run_file_name is null



      
    ) dbt_internal_test