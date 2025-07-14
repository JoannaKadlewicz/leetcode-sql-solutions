# LeetCode SQL Problem 1789 - Primary Department for Each Employee

## 📘 Problem Description

The `Employee` table contains records of employees and the departments they belong to. Each employee can belong to multiple departments, and one of them can be marked as their **primary department** using the `primary_flag` column.

Your task is to write a SQL query to **report each employee along with their primary department**.  
If an employee belongs to only one department, that department is considered their primary by default, even if the `primary_flag` is `'N'`.

Return the result in **any order**.

---

## 🗃️ Table Schema

### Employee Table

| Column Name   | Type    |
|---------------|---------|
| employee_id   | int     |
| department_id | int     |
| primary_flag  | varchar |

- `(employee_id, department_id)` is the **primary key**.
- `primary_flag` is an ENUM with values `'Y'` or `'N'`:
  - `'Y'` → this is the employee’s primary department.
  - `'N'` → not the primary department.

---

## 🧪 Example

### Input

| employee_id | department_id | primary_flag |
|-------------|----------------|--------------|
| 1           | 1              | N            |
| 2           | 1              | Y            |
| 2           | 2              | N            |
| 3           | 3              | N            |
| 4           | 2              | N            |
| 4           | 3              | Y            |
| 4           | 4              | N            |

### Output

| employee_id | department_id |
|-------------|----------------|
| 1           | 1              |
| 2           | 1              |
| 3           | 3              |
| 4           | 3              |

---

## 🧠 Explanation

- **Employee 1**: Only belongs to department 1 → primary by default.
- **Employee 2**: Has `Y` on department 1 → that's the primary.
- **Employee 3**: Only in department 3 → primary by default.
- **Employee 4**: Has `Y` on department 3 → that's the primary.

---