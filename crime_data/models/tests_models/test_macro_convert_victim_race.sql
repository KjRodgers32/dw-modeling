{{ config(marterialized='test') }}

with victim_race as (
    select
      {{ convert_victim_race('race') }} as output
      , *
    from
      {{ ref('macro_input') }}
)

select * from victim_race