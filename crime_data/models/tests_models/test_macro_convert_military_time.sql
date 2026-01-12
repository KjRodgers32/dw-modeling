{{ config(materialized='test') }}

select
  {{ convert_military_time('time') }} as output
  , *
from
  {{ ref('macro_input') }}