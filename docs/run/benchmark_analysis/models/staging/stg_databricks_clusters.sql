create or replace view dev_benchmark.stg_databricks_clusters
  
  as
    SELECT 
    `cluster_type`,
  `cluster_dbu_count`,
  `hourly_dbu_total_cost`,
  `hourly_azure_vm_total_cost`,
  `hourly_combined_cost`
FROM dev_benchmark_raw.databricks_clusters
