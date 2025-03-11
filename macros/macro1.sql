{% macro select_c_name(initial) %}
  where c3 like '{{initial}}%'
 {% endmacro%}