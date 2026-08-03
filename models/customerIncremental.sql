{{
  config(
    materialized = 'incremental',
    unique_key = 'customer_id',
    incremental_strategy = 'merge'
  )
}}

select 
    customer_id,
    first_name ||'' || last_name  as customer_name,
    current_timestamp() as updated_at
from {{ source('raw', 'CUSTOMER') }}

{% if is_incremental() %}
  
  where updated_at > (select max(updated_at) from {{ this }})
{% endif %}