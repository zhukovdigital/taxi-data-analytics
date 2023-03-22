{{ config(materialized='table') }}

with source_data as (
    select distinct null as average_trip_distance from default.trips
)

select *
from source_data
