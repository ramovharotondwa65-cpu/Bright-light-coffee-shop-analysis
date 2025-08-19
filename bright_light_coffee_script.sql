--to view the full table
select * from 
bright_coffee.sales.transactions
limit 10;

-- anaylsis of the table
select 

to_date(transaction_date)as date_name,
dayname(to_date(transaction_date)) as day_name,
monthname(to_date(transaction_date)) as month_name,
to_char(to_date(transaction_date),'YYYYMM') as month_id,



transaction_time,
case
when transaction_time between '06:00:00' AND '12:59:59' THEN 'morning'
when transaction_time between '13:00:00' AND '16:059:59' THEN 'afternoon'
when transaction_time between  '17:00:00' AND '20:59:59'  THEN 'Evening'
END as time_buckets,
CASE 
WHEN day_name NOT IN ('sat','sun') THEN 'weekday'
ELSE 'weekend'
END as day_class,

SUM(transaction_qty*unit_price) AS revenue,

count(distinct TRANSACTION_ID) as total_transactions,
count(distinct STORE_ID) as total_Stores,
count(distinct PRODUCT_ID) as total_prodcts,

--categories
store_location,
product_category,
product_detail,
product_type,
 from 
bright_coffee.sales.transactions
group by all;

--finding the mini value of the transaction_time
select min(TRANSACTION_TIME)
from bright_coffee.sales.transactions;

--finding the max value of the transaction_time
select max(TRANSACTION_TIME)
from 
bright_coffee.sales.transactions;

--placing transaction_time in a bucket
select
transaction_time,

case
when transaction_time between '06:00' AND '13:00' THEN 'morning'
when transaction_time between '13:01' AND '17:00' THEN 'afternoon'
when transaction_time between  '17:01' AND '20:59'  THEN 'Evening'
END as time_buckets
 from 
bright_coffee.sales.transactions;









