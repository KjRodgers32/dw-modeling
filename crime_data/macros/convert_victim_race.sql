{% macro convert_victim_race(race) %}
case
  when trim({{ race }}) = 'A' then 'Other Asian'
  when trim({{ race }}) = 'B' then 'Black'
  when trim({{ race }}) = 'C' then 'Chinese'
  when trim({{ race }}) = 'D' then 'Cambodian'
  when trim({{ race }}) = 'F' then 'Filipino'
  when trim({{ race }}) = 'G' then 'Guamanian'
  when trim({{ race }}) = 'H' then 'Hispanic/Latin/Mexican'
  when trim({{ race }}) = 'I' then 'American/Indian/Alaskan Native'
  when trim({{ race }}) = 'J' then 'Japanese'
  when trim({{ race }}) = 'K' then 'Korean'
  when trim({{ race }}) = 'L' then 'Laotian'
  when trim({{ race }}) = 'O' then 'Other'
  when trim({{ race }}) = 'P' then 'Pacific Islander'
  when trim({{ race }}) = 'S' then 'Samoan'
  when trim({{ race }}) = 'U' then 'Hawaiian'
  when trim({{ race }}) = 'V' then 'Vietnamese'
  when trim({{ race }}) = 'W' then 'White'
  when trim({{ race }}) = 'X' then 'Unknow'
  when trim({{ race }}) = 'Z' then 'Asian Indian'
end
{% endmacro %}
