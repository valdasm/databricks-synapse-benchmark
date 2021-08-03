create or replace view dev_benchmark.stg_run_info
  
  as
    SELECT 
    `id`,
  `run_file_name`,
  `friendly_name`,
  `description`,
  `updated_at`
FROM dev_benchmark_raw.run_info
