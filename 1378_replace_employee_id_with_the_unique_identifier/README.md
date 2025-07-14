# LeetCode SQL Problem 1378 - Replace Employee ID With The Unique Identifier

## 📘 Problem Description

Given two tables `Employees` and `EmployeeUNI`, write a SQL query to display each employee's `name` along with their corresponding `unique_id`.

- If an employee does **not** have a `unique_id`, return `null` in its place.
- Return the result in any order.

---

## 🗃️ Table Schemas

### Employees Table

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |

- `id` is the primary key.
- Each row represents an employee and their name.

### EmployeeUNI Table

| Column Name | Type |
|-------------|------|
| id          | int  |
| unique_id   | int  |

- `(id, unique_id)` is the composite primary key.
- Maps an employee `id` to a `unique_id`.

---

## 🧪 Example

### Input

Employees table:

| id  | name     |
|-----|----------|
| 1   | Alice    |
| 7   | Bob      |
| 11  | Meir     |
| 90  | Winston  |
| 3   | Jonathan |

EmployeeUNI table:

| id  | unique_id |
|-----|-----------|
| 3   | 1         |
| 11  | 2         |
| 90  | 3         |

### Output

| unique_id | name     |
|-----------|----------|
| null      | Alice    |
| null      | Bob      |
| 2         | Meir     |
| 3         | Winston  |
| 1         | Jonathan |

---

## 🧠 Explanation

- We use a `LEFT JOIN` from `Employees` to `EmployeeUNI` on the `id` column.
- This includes all employees, and fills in `null` for those without a corresponding `unique_id`.
- For example:
    - Alice and Bob have no unique_id, so they appear with `null`.
    - Jonathan (id = 3) maps to unique_id = 1.
