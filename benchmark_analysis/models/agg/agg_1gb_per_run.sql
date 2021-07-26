
{{ config(
    
    materialized='table',
    incremental_strategy='insert_overwrite',
    file_format='delta'
    
) }}



{{ agg_results_per_run('1gb') }}

