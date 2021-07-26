
{{ config(
    
    materialized='table',
    incremental_strategy='insert_overwrite',
    file_format='delta'
    
) }}



{{ agg_results_per_thread('1gb') }}


