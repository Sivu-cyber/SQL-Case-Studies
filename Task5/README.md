# JOINS AND ITS TYPES USING ECOM_SITE DATABASE

## Introduction

This project demonstrates different types of SQL joins using the `Customers` and `Orders` tables in the `ECOM_SITE` database.

Joins are used to combine records from multiple tables based on related columns. In this example, the common column used for joining is `CustID`.

The joins help retrieve customer and order information together for analysis and reporting.

---

# Database Used

## ECOM_SITE

The `ECOM_SITE` database contains e-commerce-related data such as customer details and product orders.

---

# Tables Used

## Customers Table

Contains customer information such as:

* Customer ID
* Customer Name
* Country

## Orders Table

Contains order-related details such as:

* Product
* Price
* Customer ID

---

# Join Operations

---

# 1. FULL OUTER JOIN

## Definition

A `FULL OUTER JOIN` returns:

* All rows from the Customers table
* All rows from the Orders table
* Matching records where possible

If there is no matching value, NULL values are displayed.

## Explanation

This query displays:

* Customers with orders
* Customers without orders
* Orders without customer details

## Purpose

Used when complete information from both tables is required.

---

# 2. RIGHT JOIN

## Definition

A `RIGHT JOIN` returns:

* All rows from the right table (`Orders`)
* Matching rows from the left table (`Customers`)

If no customer exists for an order, customer columns display NULL values.

## Explanation

This query retrieves all orders, including orders that do not have matching customer details.

## Purpose

Used to:

* Identify orphan orders
* Validate customer-order mapping
* Ensure all order records are visible

---

# 3. LEFT JOIN

## Definition

A `LEFT JOIN` returns:

* All rows from the left table (`Customers`)
* Matching rows from the right table (`Orders`)

If no order exists, order columns display NULL values.

## Explanation

This query lists all customers, including customers who have not placed any orders.

## Purpose

Used for:

* Customer activity analysis
* Identifying inactive customers
* Marketing campaigns

---

# 4. INNER JOIN

## Definition

An `INNER JOIN` returns only rows that have matching values in both tables.

## Explanation

This query displays customers who have placed orders.

Customers without orders and orders without customers are excluded.

## Purpose

Used when only related and valid data is required.

---

# 5. CROSS JOIN

## Definition

A `CROSS JOIN` returns every possible combination of rows from both tables.

## Explanation

Each customer is paired with every product from the Orders table.

If:

* Customers table has `m` rows
* Orders table has `n` rows

Then output = `m × n` rows.

## Purpose

Used for:

* Combination generation
* Testing
* Matrix-style outputs

---

# 6. SELF JOIN

## Definition

A `SELF JOIN` joins a table with itself.

## Explanation

In this query:

* The Customers table is treated as two separate tables using aliases (`c1` and `c2`)
* Customers from the same country are compared

The condition:

* `c1.Country = c2.Country`
  finds customers from the same country.

The condition:

* `c1.CustID <> c2.CustID`
  avoids matching the same customer with themselves.

## Purpose

Used for:

* Comparing records within the same table
* Finding similarities or relationships
* Hierarchical analysis

---

# Summary of Join Types

| Join Type       | Result                          |
| --------------- | ------------------------------- |
| INNER JOIN      | Matching records only           |
| LEFT JOIN       | All customers + matching orders |
| RIGHT JOIN      | All orders + matching customers |
| FULL OUTER JOIN | All customers and all orders    |
| CROSS JOIN      | Every possible combination      |
| SELF JOIN       | Table joined with itself        |

---

# Conclusion

This project demonstrates how different SQL joins are used to combine and analyze related data in an e-commerce system.

Using joins helps:

* Retrieve meaningful business insights
* Analyze customer orders
* Detect unmatched records
* Understand relationships between tables

Joins are essential in real-world applications such as:

* Banking systems
* E-commerce platforms
* Cloud applications
* Enterprise databases
* Reporting systems
