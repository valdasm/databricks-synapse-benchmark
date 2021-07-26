{% snapshot queries_snapshot %}

{{
    config(
      target_schema=target.schema,
      unique_key='id',
      strategy='timestamp',
      updated_at='updated_at',
      file_format='delta'
    )
}}

select * from {{ ref('stg_allowed_queries') }}

{% endsnapshot %}