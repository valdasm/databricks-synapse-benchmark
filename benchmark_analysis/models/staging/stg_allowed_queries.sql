SELECT 
    {{ dbt_utils.star(ref('allowed_queries')) }}
FROM {{ ref('allowed_queries') }}