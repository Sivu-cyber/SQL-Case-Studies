# IT Employees Database Setup and Schema Design

## Project Overview

This project demonstrates the design and implementation of a structured relational database for managing IT employees, departments, technical skills, and project assignments using Microsoft SQL Server.

The database is designed following relational database principles and normalization standards to ensure scalability, consistency, and data integrity.

The solution supports:

- Employee management
- Department management
- Skill tracking
- Project allocation
- Employee-project assignments
- Referential integrity using primary and foreign keys

---

# Technologies Used

| Technology | Purpose |
|---|---|
| Microsoft SQL Server | Database Engine |
| SQL Server Management Studio (SSMS) | Database Development & Administration |
| SQL | Database Query Language |
| Database Diagrams (SSMS) | ER Diagram Generation |

---

# Database Architecture

The database contains the following entities:

1. Department
2. Employee
3. Skill
4. Project
5. EmployeeSkill
6. ProjectAssignment

---

# Entity Descriptions

## 1. Department

Stores department-related information.

### Attributes
- DepartmentID (Primary Key)
- DepartmentName
- Location

### Relationship
- One department can contain multiple employees.

---

## 2. Employee

Stores employee details and department association.

### Attributes
- EmployeeID (Primary Key)
- FirstName
- LastName
- Email
- PhoneNumber
- HireDate
- Salary
- DepartmentID (Foreign Key)

### Relationship
- Many employees belong to one department.
- Employees can have multiple skills.
- Employees can work on multiple projects.

---

## 3. Skill

Stores technical and professional skills.

### Attributes
- SkillID (Primary Key)
- SkillName
- SkillCategory

### Relationship
- One skill can belong to multiple employees.

---

## 4. Project

Stores project-related information.

### Attributes
- ProjectID (Primary Key)
- ProjectName
- StartDate
- EndDate
- Budget

### Relationship
- One project can have multiple employees assigned.

---

## 5. EmployeeSkill (Junction Table)

Maps employees with skills.

### Attributes
- EmployeeID (Foreign Key)
- SkillID (Foreign Key)
- ProficiencyLevel

### Purpose
Implements the many-to-many relationship between Employees and Skills.

---

## 6. ProjectAssignment (Junction Table)

Maps employees with projects.

### Attributes
- AssignmentID (Primary Key)
- EmployeeID (Foreign Key)
- ProjectID (Foreign Key)
- Role
- AllocationPercentage

### Validation
- CHECK constraint ensures AllocationPercentage remains between 0 and 100.

### Purpose
Implements the many-to-many relationship between Employees and Projects.

---

# Relationship Summary

| Relationship | Type |
|---|---|
| Department → Employee | One-to-Many |
| Employee ↔ Skill | Many-to-Many |
| Employee ↔ Project | Many-to-Many |

---

# Database Features

## Referential Integrity
Foreign key constraints ensure valid relationships between all tables.

## Data Validation
CHECK constraints are implemented for validation purposes.

Examples:
- AllocationPercentage between 0 and 100
- Mandatory fields enforcement

## Scalability
The schema is designed to support future enhancements such as:
- Employee certifications
- Attendance tracking
- Performance management
- Resource planning

## Normalized Design
The database follows normalization principles to:
- Reduce redundancy
- Improve consistency
- Enhance maintainability

---

# SQL Script Contents

The SQL script includes:

- Database creation
- Table creation
- Primary key constraints
- Foreign key constraints
- CHECK constraints
- Junction table implementation

The script fully initializes the complete database schema.

---

# ER Diagram

The ER Diagram visually represents:

- Table structures
- Relationships
- Primary keys
- Foreign keys
- One-to-Many mappings
- Many-to-Many mappings

### Relationship Highlights

- Department → Employees
- Employees ↔ Skills
- Employees ↔ Projects

---

# How to Run the Project

## Step 1 — Open SSMS
Launch SQL Server Management Studio and connect to the SQL Server instance.

## Step 2 — Open the Query File
Open the SQL script file provided in the project.

## Step 3 — Execute the Script
Run the script to:
- Create the database
- Create all tables
- Apply constraints and relationships

## Step 4 — Verify Database Objects
Refresh the Object Explorer and verify:
- Tables
- Keys
- Relationships
- Constraints

## Step 5 — Generate ER Diagram
Navigate to:

```sql
Database → Database Diagrams → New Database Diagram
```

Select all tables to generate the ER Diagram.

---

# Project Deliverables

| Deliverable | Description |
|---|---|
| SQL Script | Database schema creation |
| ER Diagram | Visual representation of relationships |
| README.md | Project documentation |

---

# Use Cases

This project can be extended for:

- HR Management Systems
- Employee Skill Tracking Systems
- Resource Allocation Systems
- Workforce Management
- IT Project Management

---

# Conclusion

This project demonstrates a well-structured relational database design for managing IT employees, departments, skills, and project assignments efficiently.

The implementation uses normalization, referential integrity, and scalable relationship mapping to create a strong foundation for enterprise-level database applications.