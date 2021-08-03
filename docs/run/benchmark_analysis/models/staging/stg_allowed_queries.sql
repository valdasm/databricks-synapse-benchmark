create or replace view dev_benchmark.stg_allowed_queries
  
  as
    SELECT 
    `id`,
  `label`,
  `is_included_in_perf_analysis`,
  `exclusion_reason`,
  `updated_at`
FROM dev_benchmark_raw.allowed_queries
