# SQL Practice Tasks – Practical Examples

This repository contains practical SQL exercises demonstrating the use of  
`SELECT`, `WHERE`, and `ORDER BY` statements with real-world data scenarios.


## Table of Contents
1. [Basic Queries: SELECT](#1-basic-queries-select)  
2. [Filtering Data: WHERE](#2-filtering-data-where)  
3. [Sorting Data: ORDER BY](#3-sorting-data-order-by)  
4. [Combining Filtering and Sorting](#4-combining-filtering-and-sorting)


Below are example exercises that I completed:


1. Basic Queries: SELECT

Task 1.1

Display all data from the Customers table.

    SELECT *
    FROM Customers;

Task 1.2

Retrieve only the first name and last name of all customers.

    SELECT FirstName, LastName
    FROM Customers;

Task 1.3

Display the product name and price of all products.

    SELECT ProductName, Price
    FROM Products;

2. Filtering Data: WHERE

Task 2.1

Display all orders placed after June 1, 2023.

    SELECT OrderID, OrderDate
    FROM Orders
    WHERE OrderDate > '2023-06-01';

Task 2.2

Find all products where the price is greater than 100.

    SELECT ProductName, Price
    FROM Products
    WHERE Price > 100;

Task 2.3

Retrieve customers who live in Canada.

    SELECT FirstName, LastName
    FROM Customers
    WHERE Country = 'Canada';

Task 2.4

Display orders where TotalAmount is between 100 and 200.

    SELECT OrderID, TotalAmount
    FROM Orders
    WHERE TotalAmount BETWEEN 100 AND 200;

3. Sorting Data: ORDER BY

Task 3.1

Display products sorted by price in descending order.

    SELECT ProductName, Price
    FROM Products
    ORDER BY Price DESC;

Task 3.2

Retrieve customers sorted alphabetically by country.

    SELECT FirstName, LastName, Country
    FROM Customers
    ORDER BY Country ASC;

Task 3.3

Display all orders sorted by order date (ascending).

    SELECT OrderID, OrderDate, TotalAmount
    FROM Orders
    ORDER BY OrderDate ASC;

4. Combining Filtering and Sorting

Task 4.1

Retrieve products priced above 150, sorted by price descending.

    SELECT ProductName, Category, Price
    FROM Products
    WHERE Price > 150
    ORDER BY Price DESC;

Task 4.2

Get customers who live in USA or Canada, sorted alphabetically by last
name.

    SELECT FirstName, LastName, Country
    FROM Customers
    WHERE Country IN ('USA', 'Canada')
    ORDER BY LastName ASC;

Task 4.3

Find orders where TotalAmount is greater than 300 and sort results by
amount descending.

    SELECT OrderID, CustomerID, TotalAmount
    FROM Orders
    WHERE TotalAmount > 300
    ORDER BY TotalAmount DESC;

------------------------------------------------------------------------

Final Summary & Conclusions

This collection of SQL exercises demonstrates the foundational skills
needed to work with relational databases effectively.
Throughout these tasks, you practiced:

#Selecting data

Using the SELECT statement to retrieve specific columns or entire
tables.

#Filtering records

Applying conditions with WHERE to extract only meaningful subsets of
data.

#Sorting results

Using ORDER BY to organize output in ascending or descending order.

#Combining filtering and sorting

Building more advanced, real‑world queries by applying multiple SQL
operations together.

------------------------------------------------------------------------

#Key Takeaways

-   SQL allows you to extract exactly the data you need using simple yet
    powerful commands.
-   Understanding the relationship between SELECT, WHERE, and ORDER BY
    is essential for any data analysis workflow.
-   Even basic SQL queries can answer meaningful business questions such
    as:
    -   Which products are the most expensive?
    -   Which customers come from a specific country?
    -   Which orders exceed a given value?
-   These exercises build a strong foundation for more advanced topics
    like JOIN, GROUP BY, aggregates, subqueries, and database design.

------------------------------------------------------------------------

# What’s Next?

To continue improving your SQL skills, consider exploring:

-   Joins (INNER, LEFT, RIGHT)
-   Grouping and aggregation (GROUP BY, COUNT, SUM)
-   Subqueries
-   Creating and modifying tables (CREATE, ALTER, DROP)
-   Indexing and performance optimization

As you gain confidence, you can start building more complex real-world
data pipelines and analytical workflows.

------------------------------------------------------------------------

Happy learning!
