use sales;
select * from customers;
select * from date;
select * from markets;
select * from products;
select * from transactions;


select * from customers;
select count(*) from customers;
select customer_type, count(customer_type) from customers
group by 1;

select * from transactions
where market_code = "Mark001";

select  c.customer_code, c.custmer_name, sum(t.sales_amount) as total_sales from transactions t
JOIN customers c ON t.customer_code = c.customer_code
group by  c.customer_code,c.custmer_name
order by 3 desc;

select m.markets_name,m.markets_code, sum(t.sales_amount) from transactions t
join markets m on t.market_code = t.market_code
group by 1,2
order by 3 desc;

select p.product_type,p.product_code, sum(t.sales_amount) from transactions t
join products p on t.product_code = p.product_code
group by 1,2
order by 3 desc;

select d.year, sum(t.sales_amount) from transactions t
right join date d on t.order_date = d.date
group by 1;





