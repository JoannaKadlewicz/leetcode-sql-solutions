# LeetCode SQL Problem 177 - Nth Highest Salary

## 📘 Problem Description

Given the `Employee` table, write a SQL query to find the **nth highest distinct salary** from the table.  
If there are **less than n distinct salaries**, return `null`.

---

## 🗃️ Table Schema

### Employee Table

| Column Name | Type |
|-------------|------|
| id          | int  |
| salary      | int  |

- `id` is the primary key (contains unique values).
- Each row contains the salary of an employee.

---

## 🧪 Example

### Input

**Employee Table**

| id | salary |
|----|--------|
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |

**n = 2**

### Output

| getNthHighestSalary(2) |
|------------------------|
| 200                    |

---

### Example 2

### Input

**Employee Table**

| id | salary |
|----|--------|
| 1  | 100    |

**n = 2**

### Output

| getNthHighestSalary(2) |
|------------------------|
| null                   |

---

### Explanation

- In the first example, the distinct salaries are `[300, 200, 100]`, so the 2nd highest is `200`.
- In the second example, there is only one salary in the table, so the 2nd highest does not exist and the result is `null`.
