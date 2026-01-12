-- Macro to convert int representation of military time to string

{% macro convert_military_time(value) %}
  case
    when len({{ value }}) = 1 then concat('00:0', {{ value }})
    when len({{ value }}) = 2 then concat('00:', {{ value }})
    when len({{ value }}) = 3 then concat('0', left({{ value }}, 1), ':', right({{ value }}, 2))
    else concat(left({{ value }}, 2), ':', right({{ value }}, 2))
  end
{% endmacro %}