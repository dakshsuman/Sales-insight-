## Project Overview

This project is a data analytics initiative that provides a comprehensive Power BI dashboard to generate insights from a sales dataset for a computer hardware business. The dashboard visualizes key metrics such as total revenue, profit margins, sales quantities, and regional performance to support data-driven decision-making. The dataset is analyzed using SQL for data extraction and Power BI for visualization, with DAX expressions used to create advanced calculations.

### Objectives





Unlock Sales Insights: Identify trends, top-performing markets, and products to understand business performance.



Automate Data Analysis: Reduce manual data gathering by creating an interactive and automated dashboard.



Support Decision-Making: Provide actionable insights to optimize sales strategies and improve profitability.

Technologies Used





**Power BI**: For creating interactive dashboards and visualizations.



**SQL**: For querying and extracting data from the sales database.



**DAX**: For creating measures and calculations in Power BI.



**MySQL** Workbench: For managing and analyzing the database.

## Dataset

The dataset includes sales data from a computer hardware business, covering:





Transactions (sales amount, quantity, currency)



Customers



Products (product codes and types)



Markets (regional data, e.g., cities and zones)



Date (time-based data for trend analysis)

## Key Features





**Revenue Breakdown**: Visualize revenue by cities, years, and months.



**Profit Analysis**: Display profit margins and trends over time.



**Top Performers**: Highlight top 5 customers and products by revenue and sales quantity.



**Data Cleaning**: Handled negative values, currency normalization (INR/USD), and removal of invalid data.



**Interactive Dashboard**: Allows filtering and drill-down for detailed analysis.


## Project Structure





[db_dump.sql](https://github.com/dakshsuman/Sales-insight-/blob/main/db_dump_version_2.sql): SQL dump file containing the sales database schema and data.



[sales_insights.pbix](https://github.com/dakshsuman/Sales-insight-/blob/main/sales_dashboard.pbix): Power BI file with the dashboard and visualizations.



[queries.sql](https://github.com/dakshsuman/Sales-insight-/blob/main/sales_sql_query.sql): Sample SQL queries for data analysis (e.g., revenue by year, top customers).


## SQL Queries 

---How many customers are there for each customer type in the database?
```sql
select * from customers;
select count(*) from customers;
select customer_type, count(customer_type) from customers
group by 1;
```
---What are the details of all transactions that occurred in the market with the code "Mark001" (Chennai)?
```sql
select * from transactions
where market_code = "Mark001";
```
---Which customers have the highest total sales amounts, and what are their respective customer codes and names?
```sql
select  c.customer_code, c.custmer_name, sum(t.sales_amount) as total_sales from transactions t
JOIN customers c ON t.customer_code = c.customer_code
group by  c.customer_code,c.custmer_name
order by 3 desc;
```
---Which markets generate the highest total sales amounts, and what are their corresponding market codes?
```sql
select m.markets_name,m.markets_code, sum(t.sales_amount) from transactions t
join markets m on t.market_code = t.market_code
group by 1,2
order by 3 desc;
```
---Which product types and their respective product codes have the highest total sales amounts?
```sql
select p.product_type,p.product_code, sum(t.sales_amount) from transactions t
join products p on t.product_code = p.product_code
group by 1,2
order by 3 desc;
```
---What is the total sales amount for each year in the sales database?
```sql
select d.year, sum(t.sales_amount) from transactions t
right join date d on t.order_date = d.date
group by 1;
```


## Visualizations





**Revenue Trend**: Line chart showing revenue over time.



**Top 5 Customers**: Bar chart of top customers by revenue and sales quantity.



**Top 5 Products**: Bar chart of top products by revenue.



**Market Performance**: Pie chart and map for revenue breakdown by cities and zones.
<img width="1659" height="959" alt="image" src="https://github.com/user-attachments/assets/60b7cd81-3720-403c-8b24-5833bf62d933" />
Check out Power Bi [file here](https://github.com/dakshsuman/Sales-insight-/blob/main/sales_dashboard.pbix)

## Contact
For questions or suggestions, reach out via GitHub Issues or email at [dakshsuman13@gmail.com].
