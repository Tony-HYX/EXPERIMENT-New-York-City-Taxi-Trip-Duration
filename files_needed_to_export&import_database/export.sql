set feedback off;
set heading on;
set newp none;
set heading off;
set trimout on;　　　//去除标准输出每行的拖尾空格，缺省为off
set trimspool on;　　//去除重定向（spool）输出每行的拖尾空格，缺省为off
spool /home/oracle/out.csv;
select id || ',' || vendor_id || ',' || to_char(pickup_datetime, 'yyyy-MM-dd HH24:mi:ss') || ',' || to_char(dropoff_datetime, 'yyyy-MM-dd HH24:mi:ss') || ',' || passenger_count || ',' || pickup_longitude || ',' || pickup_latitude || ',' || dropoff_longitude || ',' || dropoff_latitude || ',' || store_and_fwd_flag || ',' || trip_duration  
from taxidata;  
spool off;
exit  