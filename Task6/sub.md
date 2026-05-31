# SUBQUERIES AND NESTED QUERIES USING EMPLOYEES DATABASE

## Introduction

This project demonstrates the usage of subqueries and nested queries in SQL using the `employees` and `departments` tables.

Subqueries are queries written inside another SQL query. They help perform advanced filtering, comparisons, calculations, and temporary table creation.

The examples in this project show how subqueries can be used in:

* WHERE clause
* SELECT clause
* FROM clause
* EXISTS condition
* Correlated queries

---

# Database Used

## Employees

The `Employees` database stores employee and department-related information.

---

# Tables Used

## employees Table

Stores employee details such as:

* Employee ID
* First Name
* Last Name
* Email
* Salary
* Department ID

## departments Table

Stores department details such as:

* Department ID
* Department Name

The common column between both tables is `department_id`.

---

# Subquery Examples

---

# 1. Employees Earning More Than the Average Salary

## Concept Used

* Scalar Subquery
* Aggregate Function (`AVG`)

## Explanation

The subquery calculates the overall average salary of all employees.

The outer query retrieves employees whose salary is greater than the calculated average salary.

## Purpose

Used to identify:

* High-performing employees
* Above-average salary earners
* Salary analysis

---

# 2. Employees Working in the Sales Department

## Concept Used

* Subquery in WHERE clause
* `IN` Operator

## Explanation

The inner query finds the department ID of the Sales department.

The outer query retrieves employees whose department ID matches the Sales department.

## Purpose

Used for:

* Department-based filtering
* Employee categorization
* Organizational analysis

---

# 3. Employees Earning More Than Their Department Average

## Concept Used

* Correlated Subquery

## Explanation

For each employee:

* The subquery calculates the average salary of that employee’s department.

The outer query compares the employee’s salary with their department average.

## Purpose

Used to identify:

* Top earners within departments
* Performance-based salary comparison
* Department salary analysis

## Performance Note

Correlated subqueries execute once for every row, so they may be slower for large datasets.

---

# 4. Employees in IT or Finance Departments

## Concept Used

* Multiple Row Subquery
* `IN` Operator

## Explanation

The subquery retrieves department IDs for IT and Finance departments.

The outer query displays employees belonging to those departments.

## Purpose

Used for:

* Multi-department filtering
* Employee segmentation
* Business reporting

---

# 5. EXISTS Subquery Example

## Concept Used

* `EXISTS` Operator

## Explanation

The query checks whether a matching Sales department exists for each employee.

If a matching record exists, the employee is included in the result.

The statement:

```sql
SELECT 1
```

is used only as a convention because `EXISTS` checks only for the existence of rows.

## Purpose

Used for:

* Existence checking
* Relationship validation
* Optimized filtering

## Performance Benefit

`EXISTS` can be faster than `IN` because it stops processing once the first matching row is found.

---

# 6. Scalar Subquery in SELECT Clause

## Concept Used

* Scalar Subquery in SELECT

## Explanation

The subquery calculates the overall average salary once.

This value is displayed along with every employee record.

## Purpose

Used to:

* Compare individual salary with company average
* Display summary values with row-level data
* Reporting and analytics

---

# 7. Subquery in FROM Clause (Derived Table)

## Concept Used

* Derived Table
* Subquery in FROM clause

## Explanation

The inner query:

* Calculates average salary for each department.

The result becomes a temporary table called:

* `department_avg_salaries`

The outer query:

* Filters departments whose average salary is greater than the company-wide average salary.

## Purpose

Used to:

* Simplify complex queries
* Create temporary summarized datasets
* Perform advanced reporting

---

# Derived Table

## Definition

A derived table is a temporary table created from a subquery inside the FROM clause.

## Key Characteristics

* Temporary result set
* Exists only during query execution
* Must have an alias
* Helps break complex logic into smaller parts

---

# Types of Subqueries Used

| Subquery Type         | Purpose                 |
| --------------------- | ----------------------- |
| Scalar Subquery       | Returns a single value  |
| Correlated Subquery   | Uses outer query values |
| Multiple Row Subquery | Returns multiple values |
| EXISTS Subquery       | Checks row existence    |
| Derived Table         | Temporary inline table  |

---

# Performance Considerations

## Non-Correlated Subqueries

* Execute only once
* Faster performance

## Correlated Subqueries

* Execute repeatedly for each row
* May be slower on large tables

## Optimization

Joins are often preferred for better performance in large datasets.

---

# Conclusion

This project demonstrates the practical use of subqueries and nested queries in SQL for employee and department analysis.

Subqueries help:

* Filter records dynamically
* Compare aggregate values
* Create temporary result sets
* Simplify complex queries
* Improve data analysis

These concepts are widely used in:

* HR management systems
* Banking applications
* Enterprise reporting
* E-commerce platforms
* Cloud and analytics systems

Understanding subqueries is essential for writing efficient and advanced SQL queries in real-world applications.
