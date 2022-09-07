SELECT * FROM customers;

SELECT count(*) FROM customers;

SELECT DISTINCT(customer_type) FROM customers;

SELECT * FROM transactions;

SELECT round(avg(cost_price)) FROM transactions;

SELECT MAX(profit_margin_percentage) FROM transactions;

SELECT MAX(order_date), MIN(order_date) FROM transactions;

SELECT COUNT(DISTINCT(customer_code)) FROM transactions;

SELECT DISTINCT(zone) FROM markets;

SELECT DISTINCT(product_type) FROM products;

SELECT DISTINCT(product_type) FROM products;

SELECT product_type, COUNT(product_type) FROM products
GROUP BY product_type;

SELECT customer_code, ROUND(AVG(sales_amount)), 
	ROUND(AVG(profit_margin_percentage),3), 
	ROUND(AVG(cost_price))
 FROM transactions
GROUP BY customer_code;

SELECT *
 FROM transactions
JOIN customers ON 
customers.customer_code = transactions.customer_code;

SELECT 
		customers.custmer_name,
        customers.customer_code,
		transactions.cost_price,
		transactions.order_date,
        transactions.profit_margin_percentage
 FROM transactions
JOIN customers ON 
customers.customer_code = transactions.customer_code;

SELECT 
		customers.custmer_name,
        customers.customer_code,
		ROUND(SUM(transactions.cost_price),5) AS SUM_OF_COST,
        ROUND(avg(transactions.profit_margin_percentage),3) AS AVERAGE_PROFIT
 FROM transactions
JOIN customers ON 
customers.customer_code = transactions.customer_code
group by customers.custmer_name;

SELECT 
		*
 FROM transactions
 INNER JOIN customers ON 
customers.customer_code = transactions.customer_code
INNER JOIN date on
transactions.order_date = date.date
group by customers.custmer_name;

SELECT 
		*
 FROM transactions
 INNER JOIN customers ON 
customers.customer_code = transactions.customer_code
INNER JOIN date on
transactions.order_date = date.date
group by customers.custmer_name
HAVING year = "2019";

SELECT 
		*
 FROM transactions
 INNER JOIN customers ON 
customers.customer_code = transactions.customer_code
INNER JOIN date on
transactions.order_date = date.date
group by customers.custmer_name
HAVING year = "2017"
order by date.date 
LIMIT 6;

SELECT * FROM markets
WHERE zone in ("North","South");






