SELECT 
    VARIANT_COL:user:id::INT AS user_id,
    VARIANT_COL:user:name::STRING AS user_name,
    VARIANT_COL:user:email::STRING AS user_email,
    VARIANT_COL:user:address:street::STRING AS user_street,
    VARIANT_COL:user:address:city::STRING AS user_city,
    VARIANT_COL:user:address:zipcode::STRING AS user_zipcode,
    orders.value:order_id::STRING AS order_id,
    orders.value:order_date::STRING AS order_date,
    orders.value:total_amount::FLOAT AS order_total_amount,
    items.value:product_id::STRING AS product_id,
    items.value:product_name::STRING AS product_name,
    items.value:quantity::INT AS product_quantity,
    items.value:price::FLOAT AS product_price
FROM ANALYTICS.ANALYTIC_SCHEMA.USERS,
    LATERAL FLATTEN(input => VARIANT_COL:user:orders) AS orders,
    LATERAL FLATTEN(input => orders.value:items) AS items

