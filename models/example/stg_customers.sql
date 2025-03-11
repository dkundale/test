  
with stg_customers as
(
    select c1,c2,c3,c4
    from  analytic_schema.customers
) 
 
 select * from stg_customers