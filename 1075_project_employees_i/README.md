# LeetCode SQL Problem 1075 - Project Employees I

## 📘 Problem Description

Given two tables, `Project` and `Employee`, report the average experience years of all employees working on each project. Round the average to 2 decimal places.

---

## 🗃️ Table Schema

### Project Table

| Column Name  | Type |
|--------------|------|
| project_id   | int  |
| employee_id  | int  |

- `(project_id, employee_id)` is the primary key.
- `employee_id` is a foreign key referencing `Employee`.

### Employee Table

| Column Name       | Type    |
|-------------------|---------|
| employee_id       | int     |
| name              | varchar |
| experience_years  | int     |

- `employee_id` is the primary key.
- `experience_years` is guaranteed to be non-null.

---

## 🧪 Example

### Input

Project table:

| project_id | employee_id |
|------------|-------------|
| 1          | 1           |
| 1          | 2           |
| 1          | 3           |
| 2          | 1           |
| 2          | 4           |

Employee table:

| employee_id | name   | experience_years |
|-------------|--------|------------------|
| 1           | Khaled | 3                |
| 2           | Ali    | 2                |
| 3           | John   | 1                |
| 4           | Doe    | 2                |

### Output

| project_id | average_years |
|------------|---------------|
| 1          | 2.00          |
| 2          | 2.50          |

---

## 🧠 Explanation

- For project 1, employees have experience years: 3, 2, and 1. The average is (3 + 2 + 1) / 3 = 2.00.
- For project 2, employees have experience years: 3 and 2. The average is (3 + 2) / 2 = 2.50.
- The query reports the average experience years per project rounded to 2 decimal places.
