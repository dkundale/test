with c_customers as
(
    select c1,c2,c3,c4
    from  analytic_schema.customers
     {{ select_c_name('C')}} 
) 
 
 select * from c_customers