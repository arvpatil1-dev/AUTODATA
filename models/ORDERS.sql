{{ config(materialized='table') }}

select
    ORDER_ID,
    CUSTOMER_ID,
    ORDER_DATE,
    QUANTITY,
    QUANTITY*12 AS FINALPRICE,
    quantity*3 as  discount,
    quantity*23 as ourcharge
from {{ source('raw', 'ORDERS') }}

