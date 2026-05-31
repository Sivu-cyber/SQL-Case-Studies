# Cloud Usage Analysis using Aggregate and Grouping Functions

## Introduction

This project demonstrates the usage of SQL Aggregate Functions and Grouping Functions using a cloud usage dataset. The database stores details about cloud resource consumption such as compute, storage, and network usage along with costs and usage hours.

The project helps analyze:

* Total cloud spending
* Resource usage patterns
* User-wise consumption
* High-spending users
* Idle users
* Resource variety used by users

---

# Database Creation

A database named `Cloud` is created to store cloud usage details.

### Purpose

* Organizes cloud usage data
* Stores records related to users and resource consumption

---

# Table Creation – cloud_usage

The `cloud_usage` table stores:

* User ID
* Resource Type
* Usage Hours
* Cost
* Usage Date

### Column Description

| Column Name   | Description                       |
| ------------- | --------------------------------- |
| user_id       | Unique identifier for each user   |
| resource_type | Type of cloud resource used       |
| usage_hours   | Number of hours resource was used |
| cost          | Cost incurred for usage           |
| usage_date    | Date of resource usage            |

---

# Data Insertion

Sample data is inserted into the table for different users and cloud services.

### Resource Types Used

* Compute
* Storage
* Network

### Purpose

The inserted data is used to perform aggregate calculations and grouping operations for analysis.

---

# Aggregate and Grouping Queries

## 1. Top 3 Users by Total Cost

### Concept Used

* `SUM()`
* `GROUP BY`
* `ORDER BY`

### Explanation

This query calculates the total spending of each user and displays the top 3 users with the highest cloud expenditure.

### Purpose

Used to identify:

* High-spending customers
* Premium users
* Resource-intensive accounts

---

# 2. Total Cost and Average Usage of Each Resource Type

### Concept Used

* `SUM()`
* `AVG()`
* `GROUP BY`

### Explanation

This query groups data based on resource type and calculates:

* Total spending for each resource
* Average usage hours

### Purpose

Helps analyze:

* Most expensive resources
* Average resource utilization
* Resource consumption trends

---

# 3. Users Spending Over ₹3,000

### Concept Used

* `SUM()`
* `GROUP BY`
* `HAVING`

### Explanation

This query filters users whose total spending exceeds ₹3,000.

### Purpose

Used to:

* Detect premium users
* Monitor high-cost accounts
* Perform billing analysis

---

# 4. Users with High Variability in Cost

### Concept Used

* `MAX()`
* `MIN()`
* `HAVING`

### Explanation

This query calculates the difference between maximum and minimum spending of each user.

### Purpose

Used to identify:

* Users with inconsistent spending patterns
* Sudden cost spikes
* Irregular cloud usage behavior

---

# 5. Users with More Than One Resource Type Used

### Concept Used

* `COUNT(DISTINCT)`
* `GROUP BY`
* `HAVING`

### Explanation

This query counts the number of unique resource types used by each user.

### Purpose

Helps identify:

* Multi-service users
* Diverse cloud usage patterns
* Cross-platform resource consumption

---

# 6. Detecting Idle Users

### Concept Used

* `SUM()`
* `COUNT()`
* `HAVING`

### Explanation

This query identifies users whose total usage hours are below 100.

### Purpose

Used to:

* Detect inactive users
* Optimize resource allocation
* Reduce unnecessary cloud costs

---

# 7. Count of Resources Used by Each User

### Concept Used

* `COUNT(*)`
* `COUNT(column_name)`
* `GROUP BY`

### Explanation

This query counts:

* Total records of usage for each user
* Number of cost entries available

### Purpose

Used for:

* Usage tracking
* Record validation
* User activity analysis

---

# Aggregate Functions Used

| Function        | Purpose                 |
| --------------- | ----------------------- |
| SUM()           | Calculates total values |
| AVG()           | Finds average values    |
| MAX()           | Finds highest value     |
| MIN()           | Finds lowest value      |
| COUNT()         | Counts records          |
| COUNT(DISTINCT) | Counts unique values    |

---

# Grouping Functions Used

| Clause   | Purpose                |
| -------- | ---------------------- |
| GROUP BY | Groups similar records |
| HAVING   | Filters grouped data   |
| ORDER BY | Sorts the output       |

---

# Conclusion

This project demonstrates how aggregate and grouping functions can be used for cloud usage analytics. These SQL operations help in:

* Monitoring cloud costs
* Understanding resource utilization
* Identifying high-spending and idle users
* Generating business insights from raw data

The project provides practical knowledge of SQL reporting and analytical query writing using real-world cloud usage scenarios.
