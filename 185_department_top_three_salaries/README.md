# LeetCode SQL Problem 185 - Department Top Three Salaries

## 📘 Problem Description

Given the `Employee` and `Department` tables, write a SQL query to **find employees who are high earners** in each department.

A **high earner** is defined as someone whose salary is among the **top three unique salaries** within their department.

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
- Each row contains an employee's ID, name, salary, and department ID.

### Department Table

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |

- `id` is the primary key (contains unique values).
- Each row contains a department's ID and name.

---

## 🧪 Example

### Input

**Employee Table**

| id | name  | salary | departmentId |
|----|-------|--------|--------------|
| 1  | Joe   | 85000  | 1            |
| 2  | Henry | 80000  | 2            |
| 3  | Sam   | 60000  | 2            |
| 4  | Max   | 90000  | 1            |
| 5  | Janet | 69000  | 1            |
| 6  | Randy | 85000  | 1            |
| 7  | Will  | 70000  | 1            |

**Department Table**

| id | name  |
|----|-------|
| 1  | IT    |
| 2  | Sales |

### Output

| Department | Employee | Salary |
|------------|----------|--------|
| IT         | Max      | 90000  |
| IT         | Joe      | 85000  |
| IT         | Randy    | 85000  |
| IT         | Will     | 70000  |
| Sales      | Henry    | 80000  |
| Sales      | Sam      | 60000  |

---

### Explanation

- **IT Department**:
    - Max earns the highest salary: **90000**
    - Joe and Randy share the second-highest salary: **85000**
    - Will earns the third-highest salary: **70000**

- **Sales Department**:
    - Henry earns the highest salary: **80000**
    - Sam earns the second-highest salary: **60000**
    - There are only two employees, so no third-highest salary.
