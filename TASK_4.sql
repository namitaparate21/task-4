--10 Question

----1) find the unique distinct value from ship_mode
select distinct ship_mode from sales

---2)Find the order_id is CA-2016-152156 or product_id FUR-BO-10001798,limit 5
select order_id,product_id from sales
where order_id = 'CA-2016-152156' or product_id = 'FUR-BO-10001798'
limit 5

---3)find the order_date is used as between 
select Sales,profit from sales 
where order_date between '2017-10-13' and '2017-12-01'

------4)find out the ship_date,order by profit,limit,
select * from sales 
where ship_date in ('2016-11-11','2016-06-16')
order by profit 
limit 70

-----5)calculate the totol sum of profit and sales where the order_line either 2,3,4,6
select sum(sales),sum(profit) from sales
where order_line in (2,3,4,6)

------6)calculate the sum,min,max,and avg of sales column and group by ship_mode
select ship_mode,
	sum(sales) as sum_sales,
	avg(sales) as avg_sales,
	min(sales) as min_sales,
	max(sales) as max_sales from sales
	group by ship_mode

----7)find the count of city
select count(*) as city from customer


----8)find out the sub_category,product_name,from product
select * from product 
where sub_category in ('Art','Envelopes') OR product_name = 'Newell 351' 
AND product_name = 'Staple envelope'

---9) write the query on customer and order by postal_code , limit
select customer_id,postal_code from customer
order by postal_code
limit 50

----10)write the query from customer find out the segment, age is greater than 38 order by age,limit
select * from customer 
where segment = 'Corporate' OR age > 38 
order by age 
limit 10
	




