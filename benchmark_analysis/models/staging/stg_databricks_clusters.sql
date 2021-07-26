SELECT 
    {{ dbt_utils.star(ref('databricks_clusters')) }}
FROM {{ ref('databricks_clusters') }}