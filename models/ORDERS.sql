{{ config(materialized='table') }}

select
    ORDER_ID,
    CUSTOMER_ID,
    ORDER_DATE,
    QUANTITY,
    QUANTITY*12 AS FINALPRICE
from {{ source('raw', 'ORDERS') }}

