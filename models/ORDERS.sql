{{ config(materialized='table') }}

select
    ORDER_ID,
    CUSTOMER_ID,
    ORDER_DATE,
    QUANTITY
from {{ source('raw', 'ORDERS') }}

