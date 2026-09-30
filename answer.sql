-- Find the total payment amount for each payment date, sort by latest date, and show the top 5.
SELECT paymentDate,
       SUM(amount) AS total_amount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;
-- Find the average credit limit for each customer, grouped by customer name and country.
SELECT customerName,
       country,
       AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY customerName, country;
-- Find the total price for each product by multiplying the quantity ordered by the price of each product.
SELECT productCode,
       quantityOrdered,
       SUM(quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;
-- Find the highest payment amount for each check number.
SELECT checkNumber,
       MAX(amount) AS highest_amount
FROM payments
GROUP BY checkNumber;
