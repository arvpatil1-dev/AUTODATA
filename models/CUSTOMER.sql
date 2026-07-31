{{ config(materialized='table') }}
select 
    CUSTOMER_ID,
    FIRST_NAME,
    LAST_NAME,
    EMAIL,
    CITY
from {{ source('raw', 'CUSTOMER') }}