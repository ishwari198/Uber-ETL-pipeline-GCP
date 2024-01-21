CREATE OR REPLACE TABLE `citric-nimbus-411701.uber_data_engineer.tbl_analytics` As (
SELECT 
f.VendorID,
d.tpep_pickup_datetime,
d.tpep_dropoff_datetime,
p.passenger_count,
t.trip_distance,
r.rate_code_name,
pk.pickup_longitude,
pk.pickup_latitude,
dp.dropoff_longitude,
dp.dropoff_latitude,
pay.payment_type_name,
f.fare_amount,
f.extra,
f.mta_tax,
f.tip_amount,
f.tolls_amount,
f.improvement_surcharge,
f.total_amount
FROM 

`citric-nimbus-411701.uber_data_engineer.fact_table` f
JOIN`citric-nimbus-411701.uber_data_engineer.datetime_dim` d ON f.datetime_id = d.datetime_id
JOIN `citric-nimbus-411701.uber_data_engineer.passenger_count_dim` p ON p.passenger_count_id = f.passenger_count_id 
JOIN `citric-nimbus-411701.uber_data_engineer.trip_distance_dim` t ON t.trip_distance_id = f.trip_distance_id 
JOIN `citric-nimbus-411701.uber_data_engineer.rate_code_dim` r ON r.rate_code_id = f.rate_code_id 
JOIN `citric-nimbus-411701.uber_data_engineer.pickup_location_dim` pk ON pk.pickup_location_id = f.pickup_location_id 
JOIN `citric-nimbus-411701.uber_data_engineer.dropoff_location_dim` dp ON dp.dropoff_location_id = f.dropoff_location_id 
JOIN `citric-nimbus-411701.uber_data_engineer.payment_type_dim` pay ON pay.payment_type_id = f.payment_type_id)
