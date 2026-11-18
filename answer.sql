-- Question 1: INNER JOIN - Employees and Offices
-- Retrieve firstName, lastName, email, officeCode for all employees
SELECT
    employees.firstName,
    employees.lastName,
    employees.email,
    employees.officeCode
FROM employees
INNER JOIN offices
    ON employees.officeCode = offices.officeCode;

-- Question 2: LEFT JOIN - Products and Product Lines
-- Retrieve productName, productVendor, productLine
SELECT
    products.productName,
    products.productVendor,
    products.productLine
FROM products
LEFT JOIN productlines
    ON products.productLine = productlines.productLine;

-- Question 3: RIGHT JOIN - Customers and Orders
-- Retrieve orderDate, shippedDate, status, customerNumber for the first 10 orders
SELECT
    orders.orderDate,
    orders.shippedDate,
    orders.status,
    orders.customerNumber
FROM customers
RIGHT JOIN orders
    ON customers.customerNumber = orders.customerNumber
LIMIT 10;