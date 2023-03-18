
  
    
    
        
        insert into taxi_dev.pickups_by_location_count__dbt_backup ("pickup_ntaname", "cnt")
  

with source_data as (

    select pickup_ntaname, count(*) as cnt from default.trips group by pickup_ntaname order by 2 desc

)

select *
from source_data
  