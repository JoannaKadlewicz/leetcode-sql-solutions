# LeetCode SQL Problem 1965 - Employees With Missing Information

## 📘 Problem Description

You are given two tables:

- `Employees`: Contains `employee_id` and `name`
- `Salaries`: Contains `employee_id` and `salary`

Each table may have different sets of `employee_id`s.  
An employee's **information is considered missing** if:
- They have a `salary` but no `name`, or
- They have a `name` but no `salary`.

Write a SQL query to return the list of `employee_id`s with missing information, **ordered by `employee_id` in ascending order**.

---

## 🗃️ Table Schemas

### Employees Table

| Column Name | Type    |
|-------------|---------|
| employee_id | int     |
| name        | varchar |

- `employee_id` is unique in this table.
- Contains names of employees.

### Salaries Table

| Column Name | Type |
|-------------|------|
| employee_id | int  |
| salary      | int  |

- `employee_id` is unique in this table.
- Contains salaries of employees.

---

## 🧪 Example

### Input

**Employees**

| employee_id | name     |
|-------------|----------|
| 2           | Crew     |
| 4           | Haven    |
| 5           | Kristian |

**Salaries**

| employee_id | salary |
|-------------|--------|
| 5           | 76071  |
| 1           | 22517  |
| 4           | 63539  |

### Output

| employee_id |
|-------------|
| 1           |
| 2           |

---

## 🧠 Explanation

- **Employee 1** is in the `Salaries` table but not in `Employees` → Missing name.
- **Employee 2** is in the `Employees` table but not in `Salaries` → Missing salary.
- Employees 4 and 5 have both name and salary.

---