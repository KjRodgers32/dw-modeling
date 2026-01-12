{% test test_is_date(model, column_name) %}
with date_validation as (
    select
      {{ column_name }} as date_field
    from
      {{ model }}
),

date_validation_errors as (
    select
      date_field
    from
      date_validation
    where
      not (date_field is null or typeof(date_field) = 'date')
)

select * from date_validation_errors

{% endtest %}