# EMPLOYEE MANAGEMENT AND ATTENDANCE TRACKER USING EMP_PROJECT DATABASE

## Introduction

This project demonstrates an Employee Management and Attendance Tracking System using SQL Server. The project manages employee details, department information, role assignments, attendance tracking, reporting, triggers, and functions.

The system is built using the `EMP_Project` database and demonstrates practical SQL concepts used in real-world HR and employee management systems.

The project includes:

* Database creation
* Table relationships
* Attendance reports
* Triggers
* Functions
* Aggregate reporting

---

# Database Used

## EMP_Project

The `EMP_Project` database stores employee and attendance-related data.

## Purpose

Used to:

* Manage employee information
* Store attendance records
* Generate HR reports
* Track employee working hours

---

# Tables Used

---

# 1. Departments Table

## Explanation

The `Departments` table stores department details such as:

* Department ID
* Department Name

## Features

* `DepartmentID` is the Primary Key
* Uses:

```sql id="r2w7qm"
IDENTITY(1,1)
```

for automatic ID generation.

## Purpose

Used to categorize employees into departments such as:

* IT
* HR
* Finance
* Operations
* Marketing

---

# 2. Roles Table

## Explanation

The `Roles` table stores employee role information.

Examples:

* Developer
* Analyst
* Manager
* Support
* Intern

## Features

* Auto-increment Role ID
* Primary Key constraints

## Purpose

Used for role assignment and employee categorization.

---

# 3. Employees Table

## Explanation

The `Employees` table stores employee details such as:

* Employee ID
* First Name
* Last Name
* Phone Number
* Department ID
* Role ID
* Join Date

## Relationships

The table uses foreign keys:

* `DepartmentID` → Departments table
* `RoleID` → Roles table

## Purpose

Used for:

* Employee management
* Department mapping
* Role assignment

---

# 4. Attendance Table

## Explanation

The `Attendance` table stores daily attendance records including:

* Attendance Date
* Check-In Time
* Check-Out Time
* Attendance Status
* Created Timestamp

## Attendance Status Values

* Present
* Absent
* Late

## Purpose

Used to:

* Track employee attendance
* Monitor punctuality
* Calculate work hours

---

# Auto Increment IDs

## Explanation

The project uses:

```sql id="n8v3la"
IDENTITY(1,1)
```

This automatically:

* Starts IDs from 1
* Increments IDs by 1

## Benefit

Used to:

* Avoid manual ID management
* Maintain unique records
* Simplify insert operations

---

# Monthly Attendance Summary

## Explanation

A report is created to display monthly attendance details for employees.

The report calculates:

* Days Present
* Days Absent
* Days Late

using:

* `COUNT`
* `CASE`
* `GROUP BY`

## Purpose

Used for:

* Monthly attendance reporting
* HR analytics
* Payroll processing

---

# Late Arrival Report

## Explanation

A query is created to list employees who arrived late.

The report displays:

* Employee details
* Attendance date
* Check-in time

## Condition Used

```sql id="d5m1qt"
WHERE a.Status = 'Late'
```

## Purpose

Used to:

* Monitor punctuality
* Track attendance discipline
* Generate HR insights

---

# Trigger – trg_AttendanceStatus

## Definition

A Trigger is a special SQL object that executes automatically after specific events.

---

# Trigger Explanation

## Event

The trigger executes:

* AFTER INSERT
  on the Attendance table.

## Logic

The trigger automatically:

* Updates CreatedAt timestamp
* Sets attendance status based on check-in time

### Rules

| Condition              | Status  |
| ---------------------- | ------- |
| CheckInTime is NULL    | Absent  |
| CheckInTime > 09:30 AM | Late    |
| Otherwise              | Present |

---

# Purpose of Trigger

Used for:

* Automating attendance updates
* Enforcing business rules
* Maintaining data consistency

---

# Attendance Insert Example

## Explanation

An attendance record is inserted for:

* Employee ID = 5

with NULL check-in and check-out times.

The trigger automatically marks the employee as:

```sql id="t6y2rm"
Absent
```

---

# Function – fn_TotalWorkHours

## Definition

A Scalar Function is created to calculate total work hours.

---

# Function Explanation

## Inputs

The function accepts:

* Employee ID
* Month
* Year

## Logic

The function calculates:

* Total working minutes

using:

```sql id="u1k9fx"
DATEDIFF(MINUTE, CheckInTime, CheckOutTime)
```

Only records with status:

* Present
* Late

are included.

---

# Purpose of Function

Used for:

* Work-hour calculation
* Payroll analysis
* Attendance analytics

---

# Fetching Function Output

## Explanation

The function is called using:

```sql id="g9p4ev"
SELECT dbo.fn_TotalWorkHours(...)
```

The result displays:

* Total minutes worked by Employee ID 1

---

# Department-wise Attendance Report

## Explanation

An aggregate query is created to generate department-wise attendance statistics.

The report calculates:

* Total attendance marked
* Present count
* Late count
* Absent count

using:

* `SUM`
* `COUNT`
* `GROUP BY`
* `HAVING`

---

# HAVING Clause Usage

## Condition

Only departments with:

```sql id="m3w7ks"
AbsentCount > 5
```

are displayed.

---

# ORDER BY Usage

## Explanation

The results are sorted using:

```sql id="x7q2nh"
ORDER BY LateCount DESC
```

Departments with highest late arrivals appear first.

---

# SQL Concepts Used

| Concept             | Purpose               |
| ------------------- | --------------------- |
| Database Creation   | Store project data    |
| Tables              | Organize information  |
| Primary Keys        | Unique identification |
| Foreign Keys        | Table relationships   |
| IDENTITY            | Auto increment IDs    |
| Triggers            | Automatic updates     |
| Functions           | Reusable calculations |
| CASE Statement      | Conditional logic     |
| GROUP BY            | Group records         |
| HAVING              | Filter grouped data   |
| Aggregate Functions | Attendance analysis   |

---

# Features of the Project

* Employee Management
* Department and Role Mapping
* Attendance Tracking
* Monthly Attendance Reports
* Late Arrival Monitoring
* Automatic Attendance Status Updates
* Work Hour Calculation
* Department-wise Analytics

---

# Conclusion

The Employee Management and Attendance Tracker project demonstrates practical SQL Server concepts used in real-world HR systems.

The project helps:

* Automate attendance management
* Generate attendance analytics
* Monitor employee punctuality
* Calculate work hours
* Improve HR reporting

This type of system is commonly used in:

* Corporate organizations
* HR management platforms
* Enterprise systems
* Educational institutions

The project provides hands-on experience with:

* SQL Server database design
* Reporting
* Triggers
* Functions
* Attendance automation
* Aggregate analytics

Understanding these concepts is essential for developing enterprise-level database applications and HR management systems.
