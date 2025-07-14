# LeetCode SQL Problem 181 - Employees Earning More Than Their Managers

## 📘 Problem Description

Given the `Employee` table, write a SQL query to find all **employees who earn more than their managers**.  
Return the result table in **any order**.

---

## 🗃️ Table Schema

### Employee Table

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |
| salary      | int     |
| managerId   | int     |

- `id` is the primary key (contains unique values).
- Each row contains information about an employee, including their manager's ID.
- `managerId` is a foreign key referring to `id` of another employee.

---

## 🧪 Example

### Input

**Employee Table**

| id | name  | salary | managerId |
|----|-------|--------|-----------|
| 1  | Joe   | 70000  | 3         |
| 2  | Henry | 80000  | 4         |
| 3  | Sam   | 60000  | NULL      |
| 4  | Max   | 90000  | NULL      |

### Output

| Employee |
|----------|
| Joe      |

---

### Explanation

- Joe earns \$70,000 while his manager (Sam) earns \$60,000.
- Joe is the only employee whose salary is greater than their manager's.
- Henry earns less than his manager (Max), so he is not included.
