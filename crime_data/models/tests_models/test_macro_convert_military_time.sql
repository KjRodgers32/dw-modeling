with military_time as (
  select
    {{ convert_military_time('time') }} as output
    , *
  from
    {{ ref('macro_input') }}
)

select * from military_time