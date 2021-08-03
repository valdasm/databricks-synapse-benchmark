select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    run_file_name,
    count(*) as n_records

from dev_benchmark.stg_run_info
where run_file_name is not null
group by run_file_name
having count(*) > 1



      
    ) dbt_internal_test