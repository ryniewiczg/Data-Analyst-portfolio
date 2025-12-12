# SQL Practice Tasks – Practical Examples

This repository contains a collection of SQL exercises completed as part of a Data Analytics course, using Google BigQuery Sandbox.
The purpose of these tasks was to practice essential SQL skills commonly used in real analytical workflows, including data selection, filtering, sorting, and combining conditions to extract meaningful insights from datasets.

These exercises helped me strengthen the foundations required for working with structured data, performing exploratory analysis, and preparing datasets for further processing or visualization.
The queries included here represent typical operations used by data analysts on a daily basis when working with relational databases.


## Table of Contents
1. [Basic Queries: SELECT](#1-basic-queries-select)  
2. [Filtering Data: WHERE](#2-filtering-data-where)  
3. [Sorting Data: ORDER BY](#3-sorting-data-order-by)  
4. [Combining Filtering and Sorting](#4-combining-filtering-and-sorting)


Below are several SQL exercises that I completed as part of my learning process:


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

This collection of SQL exercises reflects the foundational skills I practiced while learning how to work effectively with relational databases.
Throughout these tasks, I learned how to:

#Selecting data
Use the SELECT statement to retrieve specific columns or entire tables.

#Filtering records
Apply conditions using WHERE to extract only the most relevant subsets of data.

#Sorting results
Use ORDER BY to organize output in ascending or descending order.

#Combining filtering and sorting
Build more advanced, real-world queries by applying multiple SQL operations together.

#Key Takeaways

SQL enables me to extract exactly the data I need using simple yet powerful commands.
Understanding how SELECT, WHERE, and ORDER BY work together is essential in any data analysis workflow.
Even basic SQL queries can answer meaningful business questions such as:
Which products are the most expensive?
Which customers come from a specific country?
Which orders exceed a certain value?

Completing these exercises helped me build a strong foundation for more advanced topics like JOIN, GROUP BY, aggregates, subqueries, and database design.

What’s Next?

To continue improving my SQL skills, I plan to explore:

#Joins (INNER, LEFT, RIGHT)

#Grouping and aggregation (GROUP BY, COUNT, SUM)

#Subqueries

#Creating and modifying tables (CREATE, ALTER, DROP)

#Indexing and performance optimization

As I gain more confidence, I aim to start building more complex, real-world data pipelines and analytical workflows.









Happy learning!
