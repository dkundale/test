
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='view') }}

with source_data as (

    select 1 as id
    union all
    select null as id

)

select *
from source_data

  
-- with stg_custome as
-- (
--     select c1,c2,c3,c4
--     from  analytic_schema.customers
--     limit 10
-- ) 
 
--  select * from stg_custome



/*
    Uncomment the line below to remove records with null `id` values
*/
--where id is not null
