# STORED PROCEDURES AND FUNCTIONS USING COMPANYDB

## Introduction

This project demonstrates the usage of Stored Procedures, Functions, Parameters, Loops, Triggers, and Error Handling using the `CompanyDB` database.

The project uses:

* `Employee` table
* `Department` table

to perform reusable database operations and automate SQL logic.

These database programming concepts help improve:

* Code reusability
* Performance
* Maintainability
* Business logic implementation

---

# Database Used

## CompanyDB

The `CompanyDB` database stores employee and department information for demonstrating procedural SQL concepts.

---

# Tables Used

## Department Table

Stores department details such as:

* Department ID
* Department Name

## Employee Table

Stores employee details such as:

* Employee ID
* Employee Name
* Salary
* Department ID

The `DeptID` column creates a relationship between Employee and Department tables.

---

# Stored Procedure – UpdateSalary

## Definition

A Stored Procedure is a reusable block of SQL statements stored inside the database.

Stored procedures can:

* Perform updates
* Insert records
* Delete records
* Apply business logic

---

# Salary Update Procedure

## Explanation

The procedure `UpdateSalary` is created to:

* Check employee salary
* Update salary only if it is below 60000

The procedure uses:

* Parameters
* Variables
* IF...ELSE conditions

---

# Parameters Used

| Parameter  | Purpose                 |
| ---------- | ----------------------- |
| @EmpID     | Employee ID             |
| @Increment | Salary increment amount |

---

# Procedure Logic

## Explanation

1. Current salary is fetched into a variable.
2. IF condition checks whether salary is less than 60000.
3. If TRUE:

   * Salary is updated.
4. Else:

   * Message displayed:

```sql id="a2m9xd"
Salary already high, no increment applied
```

## Purpose

Used for:

* Controlled salary updates
* Business rule enforcement
* Preventing unnecessary increments

---

# Executing Stored Procedure

## Explanation

The procedure is executed using:

```sql id="q8k1bt"
EXEC UpdateSalary
```

The procedure updates salary for:

* Employee ID 105

---

# Viewing Updated Output

## Explanation

A SELECT query is used after execution to verify the updated salary.

## Purpose

Used for:

* Validation
* Result checking
* Data verification

---

# Scalar Function – fn_AnnualSalary

## Definition

A Scalar Function returns a single value.

---

# Explanation

The function `fn_AnnualSalary`:

* Accepts Employee ID
* Calculates annual salary
* Returns a single calculated value

Formula used:

* Monthly Salary × 12

---

# Purpose of Scalar Function

Used for:

* Salary calculations
* Reporting
* Reusable computations

---

# Calling the Function

## Explanation

The function is called inside a SELECT statement.

Each employee’s:

* Name
* Annual salary

is displayed.

---

# IN and OUT Parameters

## IN Parameter

* Accepts input value
* Default parameter type

Example:

```sql id="b7w3py"
@Input INT
```

---

# OUT Parameter

## Explanation

Returns value back to caller.

Example:

```sql id="x5l0nk"
@Output INT OUTPUT
```

---

# Procedure – SampleProc

## Explanation

The procedure:

* Accepts input value
* Multiplies it by 2
* Returns output using OUT parameter

---

# Purpose

Used to:

* Return processed values
* Share results with caller
* Reuse procedural logic

---

# Table-Valued Function – GetEmployeesByDept

## Definition

A Table-Valued Function (TVF) returns a table as output.

---

# Explanation

The function:

* Accepts department name
* Returns employee details for that department

The output behaves like a normal table.

---

# Purpose of TVF

Used for:

* Reusable datasets
* Dynamic filtering
* Parameterized queries

---

# Calling Table-Valued Function

## Explanation

The function is called inside the FROM clause using:

```sql id="r3f8uc"
SELECT * FROM dbo.GetEmployeesByDept('HR')
```

## Purpose

Displays employees belonging to the HR department.

---

# Loops in Stored Procedures

## Explanation

The procedure `PrintNumbers` uses:

* `WHILE` loop

to print numbers from 1 to 5.

---

# Purpose of Loops

Used for:

* Repetitive processing
* Iterative operations
* Batch execution

---

# Trigger – trg_AfterInsert

## Definition

A Trigger is a special stored procedure that executes automatically when events occur on a table.

Events include:

* INSERT
* UPDATE
* DELETE

---

# Trigger Explanation

## Explanation

The trigger `trg_AfterInsert` executes automatically after inserting a new employee record.

It displays:

```sql id="g4n2lm"
New Employee Added!
```

---

# Purpose of Trigger

Used for:

* Logging
* Auditing
* Notifications
* Data validation

---

# Error Handling – TRY...CATCH

## Explanation

The TRY...CATCH block is used for handling runtime errors.

In this example:

* A non-existing employee ID is passed to the procedure.

If an error occurs:

* The CATCH block displays the error message.

---

# Purpose of Error Handling

Used for:

* Debugging
* Exception handling
* Preventing query failure

---

# Difference Between Procedure and Function

| Stored Procedure                 | Function                      |
| -------------------------------- | ----------------------------- |
| May or may not return value      | Must return value             |
| Can perform INSERT/UPDATE/DELETE | Mainly for calculations       |
| Called using EXEC                | Called inside SELECT          |
| Can return multiple outputs      | Returns scalar value or table |

---

# Scalar Function vs Table-Valued Function

| Scalar Function           | Table-Valued Function |
| ------------------------- | --------------------- |
| Returns single value      | Returns table         |
| Used in SELECT clause     | Used in FROM clause   |
| Suitable for calculations | Suitable for datasets |

---

# Summary of Concepts

| Concept               | Purpose                        |
| --------------------- | ------------------------------ |
| Stored Procedure      | Automate SQL logic             |
| Scalar Function       | Return single calculated value |
| Table-Valued Function | Return reusable table          |
| Trigger               | Automatic event execution      |
| IN Parameter          | Pass input value               |
| OUT Parameter         | Return output value            |
| WHILE Loop            | Iterative processing           |
| TRY...CATCH           | Error handling                 |

---

# Conclusion

This project demonstrates advanced SQL programming concepts using Stored Procedures, Functions, Triggers, and Error Handling.

These concepts help:

* Automate database tasks
* Improve reusability
* Enforce business rules
* Simplify complex operations
* Improve maintainability

They are widely used in:

* Banking systems
* HR management applications
* Enterprise software
* E-commerce platforms
* Cloud-based database systems

Understanding procedures, functions, and triggers is essential for advanced database development and SQL programming.
