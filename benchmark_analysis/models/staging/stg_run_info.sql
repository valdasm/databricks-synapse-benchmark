SELECT 
    {{ dbt_utils.star(ref('run_info')) }}
FROM {{ ref('run_info') }}