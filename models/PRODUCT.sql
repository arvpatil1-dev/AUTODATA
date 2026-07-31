select
    product_id,
    product_name,
    CATEGORY,
    PRICE
from {{ source('raw', 'PRODUCT') }}