

  create view taxi_dev.payments_by_type_large__dbt_tmp 
  
  as (
    -- Use the `ref` function to select from other models

select payment_type, count(*) as cnt, 'USD' as constant_currency from default.trips where fare_amount > 100 group by payment_type
  )