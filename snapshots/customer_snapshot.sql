{% snapshot customer_snapshot %}

{{
    config(
      target_schema='snapshots',
      unique_key='CUSTOMER_ID',
      strategy='check',
      check_cols=['FIRST_NAME', 'LAST_NAME', 'EMAIL', 'CITY'],
      invalidate_hard_deletes=True,
      snapshotted_at='DBT_UPDATED_AT'  
    )
}}

select * from {{ source('raw', 'CUSTOMER') }}

{% endsnapshot %}