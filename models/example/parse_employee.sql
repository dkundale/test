-- CREATE OR REPLACE PROCEDURE parse_employee()
-- RETURNS TABLE ()
-- LANGUAGE SQL
-- AS
-- $$
-- DECLARE
--   res RESULTSET DEFAULT (
-- select
--  f.value:"id"::int as id,
--     f.value:"firstName"::string as firstName
--     ,f.value:"lastName"::string as lastName,
    
-- from ANALYTICS.ANALYTIC_SCHEMA.EMPLOYEE e1
-- , table(flatten(VARIANT_COL:employees:employee)) f)
-- BEGIN
--   RETURN TABLE(res)
-- END
-- $$



--  call parse_employee()



----working json fields should be in ""
select
 f.value:"id"::int as id,
    f.value:"firstName"::string as firstName
    ,f.value:"lastName"::string as lastName,
    
from ANALYTICS.ANALYTIC_SCHEMA.EMPLOYEE e1
, table(flatten(VARIANT_COL:employees:employee)) f