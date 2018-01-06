load data
infile "/home/oracle/train.csv"
append
into table taxidata
fields terminated by ','
trailing nullcols
(id,
vendor_id,
pickup_datetime "to_date(:pickup_datetime,'yyyy-mm-dd hh24:mi:ss')",
dropoff_datetime "to_date(:dropoff_datetime,'yyyy-mm-dd hh24:mi:ss')",
passenger_count,
pickup_longitude,
pickup_latitude,
dropoff_longitude,
dropoff_latitude,
store_and_fwd_flag,
trip_duration)