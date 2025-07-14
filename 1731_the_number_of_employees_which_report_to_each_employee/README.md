# LeetCode SQL Problem 1731 - The Number of Employees Which Report to Each Employee

## 📘 Problem Description

Given an `Employees` table, write a SQL query to report the IDs and names of all **managers**, the number of **direct reports** they have, and the **average age** of those reports rounded to the nearest integer.

A **manager** is defined as an employee who has **at least one** other employee reporting directly to them.

Return the result table ordered by `employee_id`.

---

## 🗃️ Table Schema

### Employees Table

| Column Name  | Type    |
|--------------|---------|
| employee_id  | int     |
| name         | varchar |
| reports_to   | int     |
| age          | int     |

- `employee_id` is the primary key.
- Some employees may report to other employees via the `reports_to` column.
- If `reports_to` is `null`, the employee has no manager.

---

## 🧪 Example

### Input

| employee_id | name    | reports_to | age |
|-------------|---------|------------|-----|
| 9           | Hercy   | null       | 43  |
| 6           | Alice   | 9          | 41  |
| 4           | Bob     | 9          | 36  |
| 2           | Winston | null       | 37  |

### Output

| employee_id | name  | reports_count | average_age |
|-------------|-------|----------------|-------------|
| 9           | Hercy | 2              | 39          |

---

## 🧠 Explanation

- Employee `9` is the only one with direct reports (`6`, `4`).
- The average age of Alice and Bob is `(41 + 36) / 2 = 38
