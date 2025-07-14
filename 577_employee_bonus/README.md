# LeetCode SQL Problem 577 - Employee Bonus

## 📘 Problem Description

Write a SQL query to **report the name and bonus amount of each employee who has a bonus less than 1000**.

If an employee does not have a bonus record, they should still appear in the result with a `NULL` bonus.

---

## 🗃️ Table Schemas

### Employee Table

| Column Name | Type    |
|-------------|---------|
| empId       | int     |
| name        | varchar |
| supervisor  | int     |
| salary      | int     |

- `empId` is the **primary key**.
- Each row represents an employee, their salary, and their supervisor's ID.

---

### Bonus Table

| Column Name | Type |
|-------------|------|
| empId       | int  |
| bonus       | int  |

- `empId` is the **primary key** and a **foreign key** to `Employee.empId`.
- Each row represents an employee’s bonus amount.

---

## 🛠️ Requirements

- List **employee names** and their **bonus** only if:
    - Their bonus is **less than 1000**, or
    - They do **not have** a bonus record.
- Return the result in **any order**.

---

## 🧪 Example

### Input

**Employee Table**

| empId | name   | supervisor | salary |
|-------|--------|------------|--------|
| 3     | Brad   | null       | 4000   |
| 1     | John   | 3          | 1000   |
| 2     | Dan    | 3          | 2000   |
| 4     | Thomas | 3          | 4000   |

**Bonus Table**

| empId | bonus |
|-------|-------|
| 2     | 500   |
| 4     | 2000  |

### Output

| name  | bonus |
|-------|-------|
| Brad  | null  |
| John  | null  |
| Dan   | 500   |

---

### Explanation

- **Brad** and **John** do not have a bonus → included with `NULL`.
- **Dan** has a bonus of **500** → included.
- **Thomas** has a bonus of **2000** → excluded (bonus is not < 1000).
