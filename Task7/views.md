# VIEWS AND ITS USAGE USING ECOM DATABASE

## Introduction

This project demonstrates the usage of SQL Views using the `customers` and `orders` tables in the `ECOM` database.

A View is a virtual table created from a SQL query. It stores the query definition instead of storing actual data. Views simplify complex SQL operations, improve security, and allow reusable query logic.

The project covers:

* Simple Views
* Complex Views
* Security-based Views
* Updatable and Non-Updatable Views
* Indexed Views
* Materialized Views
* WITH CHECK OPTION

---

# Database Used

## ECOM

The `ECOM` database stores customer and order information for an e-commerce application.

---

# Tables Used

## customers Table

Stores customer-related information such as:

* Customer ID
* First Name
* Last Name
* Email
* Phone Number
* Address

## orders Table

Stores order-related details such as:

* Order ID
* Customer ID
* Order Date
* Total Amount
* Order Status

The common column between both tables is `cust_id`.

---

# Simple View – customer_order_details

## Explanation

A view named `customer_order_details` is created using a JOIN between:

* customers table
* orders table

The view displays:

* Customer name
* Order ID
* Order date
* Total amount
* Order status

## Purpose

Used to:

* Simplify repeated join queries
* Display order details easily
* Improve readability

## Benefit

Instead of writing complex joins repeatedly, users can directly query the view like a table.

---

# Complex View – customer_spending

## Explanation

A view named `customer_spending` is created using:

* JOIN
* Aggregate functions
* GROUP BY clause

The view calculates:

* Number of orders
* Total amount spent by each customer

## Purpose

Used for:

* Customer spending analysis
* Sales reporting
* Business intelligence

## Benefit

Complex calculations are stored once and reused whenever needed.

---

# Security View – public_customer_info

## Explanation

A view named `public_customer_info` is created to hide sensitive information such as:

* Email
* Address

Only public-safe columns are displayed.

## Purpose

Used for:

* Data privacy
* Security
* Restricted access

## Benefit

Users can access limited information without direct access to sensitive customer data.

---

# Reusable SQL Logic

## Explanation

The previously created `customer_spending` view is reused directly without rewriting joins or aggregate queries.

## Purpose

Used to:

* Reduce duplicate SQL code
* Simplify query writing
* Improve maintainability

---

# Updatable View – updatable_customers

## Explanation

A simple view based on a single table is created.

Since the view:

* Uses only one table
* Does not contain aggregates or GROUP BY

data can be updated through the view.

## Purpose

Used to:

* Modify table data through views
* Simplify controlled updates

## Benefit

Applications can update selected columns without direct table access.

---

# Non-Updatable View – non_updatable_view

## Explanation

This view contains:

* Aggregate function (`COUNT`)
* GROUP BY clause

Because of these operations, the view becomes non-updatable.

Attempting to update data through this view results in an error.

## Purpose

Demonstrates limitations of view updates.

---

# Dropping a View

## Explanation

The `DROP VIEW` statement removes a view from the database.

After dropping:

* The view no longer exists
* Queries against the view produce errors

## Purpose

Used when:

* Views are outdated
* Query logic changes
* Database cleanup is required

---

# WITH CHECK OPTION – large_orders View

## Explanation

The `large_orders` view displays orders where:

* `total_amount > 100`

The `WITH CHECK OPTION` ensures:

* Any inserted or updated rows must satisfy the condition

If a row does not meet the condition, the operation is rejected.

## Purpose

Used to:

* Maintain data consistency
* Enforce business rules
* Prevent invalid updates

---

# Indexed View – CustomerOrderSummary0

## Explanation

An indexed view is created using:

* `SCHEMABINDING`
* Aggregate functions
* `COUNT_BIG(*)`

The view summarizes:

* Customer spending
* Number of orders

## SCHEMABINDING

`SCHEMABINDING` binds the view to the structure of underlying tables.

This prevents schema changes that could affect the view.

## Purpose

Used for:

* Performance optimization
* Faster query execution
* Reporting on large datasets

---

# Unique Clustered Index

## Explanation

A `UNIQUE CLUSTERED INDEX` is created on the indexed view.

This physically stores the view result on disk.

## Benefit

The database no longer recalculates the query every time.

This improves performance significantly for:

* Large reports
* Frequent aggregations
* Analytics queries

---

# Materialized View

## Definition

A materialized view stores the actual query result physically on disk.

Unlike normal views:

* Data is precomputed
* Query execution is faster

## Explanation

The `customer_spending_mv` materialized view stores customer spending totals.

The data must be refreshed manually using:

* `REFRESH MATERIALIZED VIEW`

## Purpose

Used for:

* Reporting systems
* Data warehousing
* Analytical processing

---

# Difference Between View and Materialized View

| View                         | Materialized View          |
| ---------------------------- | -------------------------- |
| Stores only query definition | Stores actual query result |
| Executes query every time    | Uses stored data           |
| Always shows latest data     | Needs refresh              |
| Lower storage usage          | Higher storage usage       |

---

# Types of Views Used

| View Type          | Purpose                   |
| ------------------ | ------------------------- |
| Simple View        | Simplify joins            |
| Complex View       | Store aggregate logic     |
| Security View      | Hide sensitive data       |
| Updatable View     | Allow updates             |
| Non-Updatable View | Read-only aggregated data |
| Indexed View       | Improve performance       |
| Materialized View  | Store precomputed results |

---

# Conclusion

This project demonstrates the practical usage of SQL Views in an e-commerce database system.

Views help:

* Simplify SQL queries
* Improve security
* Reuse query logic
* Optimize performance
* Support reporting and analytics

Views are widely used in:

* Banking systems
* E-commerce applications
* Enterprise reporting
* Cloud analytics
* Business intelligence platforms

Understanding views is essential for designing secure, efficient, and maintainable database solutions.
