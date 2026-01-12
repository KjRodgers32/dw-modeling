with victim_sex as (
    select
      {{ convert_victim_sex('sex') }} as output
      , *
    from
      {{ ref('macro_input') }}
)

select * from victim_sex