{% macro stored_proc(msg) %}
create or replace procedure stored_proc(message varchar)
returns varchar not null
language sql
as
begin
  return message;
end;

call stored_proc("msg");
{% endmacro %}