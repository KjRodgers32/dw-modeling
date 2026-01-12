{% macro convert_victim_sex(sex) %}
case
  when trim({{ sex }}) = 'M' then 'Male'
  when trim({{ sex }}) = 'F' then 'Female'
  else 'Unknown'
end
{% endmacro %}