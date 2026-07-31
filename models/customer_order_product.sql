with customers as (
    select * from {{ source('raw', 'CUSTOMER') }}
),

orders as (
    select * from {{ source('raw', 'ORDERS') }}
),

products as (
    select * from {{ source('raw', 'PRODUCT') }}
)

select
    c.CUSTOMER_ID,
    o.ORDER_ID,
    o.ORDER_DATE,
    o.QUANTITY,
    p.PRODUCT_ID,
     p.CATEGORY,
    c.city
from orders o
left join customers c on o.CUSTOMER_ID = c.CUSTOMER_ID
left join products p on o.PRODUCT_ID = p.PRODUCT_ID