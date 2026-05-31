# DML Statements Using Simple Retail System

## Project Overview

This project demonstrates the implementation of Data Manipulation Language (DML) operations using a Simple Retail System database in Microsoft SQL Server.

The project covers:

- Table creation
- Data insertion
- Handling NULL values
- Using DEFAULT constraints
- UPDATE operations
- DELETE operations
- Applying WHERE conditions for controlled data modification

The database is designed to manage suppliers, products, and customer orders while maintaining data integrity through primary and foreign key relationships.

---

# Technologies Used

| Technology | Purpose |
|---|---|
| Microsoft SQL Server | Database Management System |
| SQL Server Management Studio (SSMS) | Query Execution & Database Administration |
| SQL | Data Definition & Manipulation |

---

# Database Tables

The project consists of the following tables:

1. Suppliers
2. Products
3. Orders

---

# Table Creation

The following database objects were created:

## Suppliers Table

Stores supplier-related information.

### Key Features
- Primary Key
- NOT NULL constraints
- Supplier contact information

### Example Columns
- SupplierID
- SupplierName
- ContactName
- PhoneNumber
- City

---

## Products Table

Stores product-related information.

### Key Features
- Primary Key
- Foreign Key referencing Suppliers
- DEFAULT constraint for stock quantity

### Example Columns
- ProductID
- ProductName
- UnitPrice
- StockQuantity
- SupplierID

---

## Orders Table

Stores customer order information.

### Key Features
- Primary Key
- Foreign Key referencing Products
- Order tracking details

### Example Columns
- OrderID
- ProductID
- Quantity
- OrderDate

---

# INSERT Statements

## Inserting Complete Records

Values were inserted into the Suppliers table by providing all column values explicitly.

### Features Demonstrated
- Standard INSERT statement
- Full column value insertion

---

## Handling NULL Values

Some records were inserted without values for:
- ContactName
- PhoneNumber

These columns were automatically stored as NULL values.

### Purpose
Demonstrates optional column handling in SQL.

---

## Handling DEFAULT Values

The Products table contains a DEFAULT constraint on StockQuantity.

When StockQuantity was omitted during insertion:
- SQL Server automatically assigned the default value of 0.

### Features Demonstrated
- DEFAULT constraints
- Partial column insertion

---

# UPDATE Statements

UPDATE statements were used to modify existing records using WHERE conditions to target specific rows.

## Operations Performed

### 1. Update Product Price
Modified the unit price of a specific product.

### 2. Update Product Stock and Supplier
Updated:
- Stock quantity
- Supplier association

for selected products.

### 3. Replace NULL Values
Updated supplier records to replace previously stored NULL values with valid contact information.

---

# DELETE Statements

DELETE operations were performed carefully using WHERE clauses.

## Operations Performed

### 1. Delete a Specific Order
Removed a particular order record.

### 2. Delete an Obsolete Product
Deleted products that are no longer sold.

### 3. Delete a Supplier
Attempted to delete supplier records.

### Foreign Key Consideration
If products still referenced the supplier:
- Supplier deletion would fail due to foreign key constraints.
- Dependent product records must be deleted first.

---

# Key SQL Concepts Demonstrated

| Concept | Description |
|---|---|
| INSERT INTO | Add records into tables |
| NULL Handling | Store missing values |
| DEFAULT Constraint | Automatically assign default values |
| UPDATE | Modify existing records |
| DELETE | Remove records |
| WHERE Clause | Apply operations conditionally |
| PRIMARY KEY | Ensure unique records |
| FOREIGN KEY | Maintain referential integrity |

---

# Referential Integrity

The project enforces referential integrity using foreign key constraints between:

- Suppliers → Products
- Products → Orders

This ensures:
- Valid relationships
- Consistent data
- Prevention of orphan records

---

# How to Run the Project

## Step 1 — Open SSMS
Launch SQL Server Management Studio and connect to your SQL Server instance.

## Step 2 — Open the SQL Script
Open the DML script file containing:
- CREATE TABLE statements
- INSERT statements
- UPDATE statements
- DELETE statements

## Step 3 — Execute the Script
Run the script sequentially to:
- Create tables
- Insert data
- Modify records
- Delete records

## Step 4 — Verify Results
Use SELECT statements to verify:
- Inserted records
- Updated values
- Deleted records

---

# Learning Outcomes

This project helps in understanding:

- SQL DML operations
- Data modification techniques
- Referential integrity
- Constraint handling
- Controlled updates and deletions using WHERE clauses

---

# Conclusion

This project demonstrates practical implementation of SQL DML operations in a Simple Retail System database.

By using INSERT, UPDATE, and DELETE statements along with constraints and relational mapping, the project provides a strong foundation for understanding real-world database management and data manipulation operations in SQL Server.

---

# Thank You