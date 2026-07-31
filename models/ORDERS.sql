{{ config(materialized='table') }}

select
    ORDER_ID,
    CUSTOMER_ID,
    ORDER_DATE,
    QUANTITY,
    QUANTITY*12 AS FINALPRICE,
    quantity*3 as  discount,
    quantity*33 as ourcharges
from {{ source('raw', 'ORDERS') }}

