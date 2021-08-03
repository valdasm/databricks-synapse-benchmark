select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    timeStamp,
    count(*) as n_records

from dev_benchmark.stg_1gb_databricks
where timeStamp is not null
group by timeStamp
having count(*) > 1



      
    ) dbt_internal_test