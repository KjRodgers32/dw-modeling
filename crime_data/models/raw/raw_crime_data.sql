with renamed_raw_claims_columns as (
    select
      dr_no as record_id
      , try_to_date(`Date Rptd`, 'MM/dd/yyyy hh:mm:ss a') as date_reported
      , try_to_date(`DATE OCC`, 'MM/dd/yyyy hh:mm:ss a') as date_occurred
      , {{ convert_military_time('`TIME OCC`') }} as time_occurred
      , area as geographical_area
      , trim(`AREA NAME`) as area_name
      , lpad(trim(`Rpt Dist No`), 4, '0') as sub_geographical_area
      , `Crm Cd` as crime_code
      , trim(`Crm Cd Desc`) as crime_code_description
      , trim(mocodes) as mo_codes
      , `Vict Age` as victim_age
      , trim(`Vict Sex`) as victim_sex
      , {{ convert_victim_sex('`Vict Sex`') }} as victim_sex_description
      , trim(`Vict Descent`) as victim_race
      , {{ convert_victim_race('`Vict Descent`') }} as victim_race_description
      , `Premis Cd` as premise_code
      , trim(`Premis Desc`) as premise_code_description
      , `Weapon Used Cd` as weapon_used_code
      , trim(`Weapon Desc`) as weapone_used_code_description
      , trim(status) as status
      , trim(`Status Desc`) as status_description
      , `Crm Cd 1` as crime_code_1
      , `Crm Cd 2` as crime_code_2
      , `Crm Cd 3` as crime_code_3
      , `Crm Cd 4` as crime_code_4
      , trim(regexp_replace(location, '\\s+', '')) as location
      , lat as latitude
      , lon as longitude
    from
      {{ source("crime_data", "crime_data_from_2020_to_present") }}
)

select * from renamed_raw_claims_columns