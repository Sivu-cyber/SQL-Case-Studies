# Extracting Data Using SQL Queries

## Project Overview

This project demonstrates how to extract and filter data using SQL queries in Microsoft SQL Server.

The project covers essential SQL querying concepts including:

- Creating tables
- Inserting records
- Retrieving data using SELECT statements
- Filtering records using WHERE conditions
- Sorting data using ORDER BY
- Limiting result sets
- Pattern matching using LIKE
- Range filtering using BETWEEN and AND
- Retrieving unique records using DISTINCT

The project uses a Student table to demonstrate various SQL data extraction techniques commonly used in database management and data analysis.

---

# Technologies Used

| Technology | Purpose |
|---|---|
| Microsoft SQL Server | Database Management System |
| SQL Server Management Studio (SSMS) | Query Execution & Database Administration |
| SQL | Data Query Language |

---

# Database Table

The project uses a single table:

## Student Table

Stores student-related information.

### Example Columns
- StudentID
- StudentName
- Age
- Gender
- Course
- Marks
- City

---

# Table Creation and Data Insertion

Initially:

- The Student table was created
- Sample student records were inserted

The inserted data is used to perform different SQL extraction and filtering operations.

---

# SQL Operations Demonstrated

## SELECT Statement

The SELECT statement is used to retrieve data from the Student table.

### Operations Performed
- Retrieve all records
- Retrieve specific columns
- Filter records
- Sort records

### Purpose
Demonstrates the basic data extraction capability of SQL.

---

# WHERE Condition

The WHERE clause is used to filter records based on specific conditions.

### Examples of Filtering
- Students with marks greater than a value
- Students from a specific city
- Students within a particular age range

### Functions Demonstrated
- Comparison operators
- Logical operators
- Conditional filtering

---

# ORDER BY Clause

The ORDER BY clause is used to sort records.

### Sorting Types
- Ascending order (ASC)
- Descending order (DESC)

### Example Usage
- Sort students by marks
- Sort students alphabetically by name

---

# LIKE Operator

The LIKE operator is used for pattern matching.

### Examples
- Names starting with a specific letter
- Names ending with specific characters
- Partial text matching

### Purpose
Demonstrates flexible text-based searching in SQL.

---

# BETWEEN and AND Operator

Used to filter records within a specified range.

### Examples
- Marks between 60 and 90
- Age between 18 and 25

### Purpose
Simplifies range-based filtering.

---

# LIMIT / TOP Functionality

SQL Server does not support the LIMIT keyword directly.

Instead, SQL Server uses:

## TOP Keyword
Used to retrieve a fixed number of rows.

### Example
```sql
SELECT TOP 5 * FROM Student;
```

## OFFSET and FETCH
Used for pagination and advanced row limiting.

---

# Database Compatibility

| Database | Limiting Keyword |
|---|---|
| SQL Server | TOP / OFFSET FETCH |
| MySQL | LIMIT |
| PostgreSQL | LIMIT |
| SQLite | LIMIT |

---

# DISTINCT Keyword

The DISTINCT keyword is used to retrieve unique records without duplicates.

### Example Usage
- Retrieve unique city names
- Retrieve unique course names

### Purpose
Helps eliminate duplicate values from query results.

---

# Key SQL Concepts Demonstrated

| Concept | Description |
|---|---|
| SELECT | Retrieve data from tables |
| WHERE | Filter records |
| ORDER BY | Sort records |
| LIKE | Pattern matching |
| BETWEEN AND | Range filtering |
| DISTINCT | Remove duplicate results |
| TOP | Limit number of rows in SQL Server |

---

# How to Run the Project

## Step 1 — Open SSMS
Launch SQL Server Management Studio and connect to your SQL Server instance.

## Step 2 — Open the SQL Script
Open the SQL query file containing:
- CREATE TABLE statements
- INSERT statements
- SELECT queries

## Step 3 — Execute the Script
Run the script sequentially to:
- Create the Student table
- Insert sample data
- Execute extraction queries

## Step 4 — Verify Query Results
Review the output generated for:
- Filtered records
- Sorted data
- Unique entries
- Limited result sets

---

# Learning Outcomes

This project helps in understanding:

- SQL data retrieval techniques
- Query filtering methods
- Sorting and limiting results
- Pattern matching operations
- Database compatibility differences
- Practical SQL query writing

---

# Conclusion

This project demonstrates the fundamental SQL data extraction operations used in real-world database systems.

By using SELECT queries with filtering, sorting, pattern matching, and range conditions, the project provides a strong foundation for SQL querying and data analysis in Microsoft SQL Server.

---

# Thank You