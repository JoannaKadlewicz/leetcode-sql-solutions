# LeetCode SQL Problem 184 - Department Highest Salary

## 📘 Problem Description

Given the `Employee` and `Department` tables, write a SQL query to **find employees who have the highest salary in each department**.  
Return the result table in **any order**.

---

## 🗃️ Table Schemas

### Employee Table

| Column Name  | Type    |
|--------------|---------|
| id           | int     |
| name         | varchar |
| salary       | int     |
| departmentId | int     |

- `id` is the primary key (contains unique values).
- `departmentId` is a foreign key referencing `Department.id`.
- Each row contains an employee's ID, name, salary, and department.

### Department Table

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |

- `id` is the primary key (contains unique values).
- `name` is guaranteed to be **not NULL**.
- Each row contains a department's ID and name.

---

## 🧪 Example

### Input

**Employee Table**

| id | name  | salary | departmentId |
|----|-------|--------|--------------|
| 1  | Joe   | 70000  | 1            |
| 2  | Jim   | 90000  | 1            |
| 3  | Henry | 80000  | 2            |
| 4  | Sam   | 60000  | 2            |
| 5  | Max   | 90000  | 1            |

**Department Table**

| id | name  |
|----|--------|
| 1  | IT     |
| 2  | Sales  |

### Output

| Department | Employee | Salary |
|------------|----------|--------|
| IT         | Jim      | 90000  |
| Sales      | Henry    | 80000  |
| IT         | Max      | 90000  |

---

### Explanation

- **IT Department**: Jim and Max both earn the highest salary (90000), so both are included.
- **Sales Department**: Henry earns the highest salary (80000).
