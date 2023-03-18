

  create view taxi_dev.payments_by_type_very_large__dbt_tmp 
  
  as (
    -- Use the `ref` function to select from other models

select payment_type, count(*) as cnt, null as constant_currency from default.trips where fare_amount > 500 group by payment_type
  )