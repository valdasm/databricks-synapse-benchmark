select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      




with left_table as (

  select
    source_file_name as id

  from dev_benchmark.stg_jmeter_logs

  where source_file_name is not null
    and 1=1

),

right_table as (

  select
    run_file_name as id

  from dev_benchmark.stg_run_info

  where run_file_name is not null
    and 1=1

),

exceptions as (

  select
    left_table.id,
    right_table.id as right_id

  from left_table

  left join right_table
         on left_table.id = right_table.id

  where right_table.id is null

)

select * from exceptions


      
    ) dbt_internal_test