
select
 f.value:"id"::int as id,
    f.value:"firstName"::string as firstName
    ,f.value:"lastName"::string as lastName,
    
from ANALYTICS.ANALYTIC_SCHEMA.EMPLOYEE e1
, table(flatten(VARIANT_COL:employees:employee)) f