# LeetCode SQL Problem 176 - Second Highest Salary

## 📘 Problem Description

Given the `Employee` table, write a SQL query to find the **second highest distinct salary**.  
If there is **no second highest salary**, return `NULL` (or `None` in Pandas).

---

## 🗃️ Table Schema

### Employee Table

| Column Name | Type |
|-------------|------|
| id          | int  |
| salary      | int  |

- `id` is the primary key (contains unique values).
- Each row contains information about an employee's salary.

---

## 🧪 Examples

### Example 1

**Input**

**Employee Table**

| id  | salary |
|-----|--------|
| 1   | 100    |
| 2   | 200    |
| 3   | 300    |

**Output**

| SecondHighestSalary |
|---------------------|
| 200                 |

---

### Example 2

**Input**

**Employee Table**

| id  | salary |
|-----|--------|
| 1   | 100    |

**Output**

| SecondHighestSalary |
|---------------------|
| NULL                |

---

## ⏱️ Complexity

| Type              | Complexity       |
|-------------------|------------------|
| Time Complexity   | O(n log n)       |
| Space Complexity  | O(1)             |

> Sorting the distinct salary values takes `O(n log n)`, where `n` is the number of unique salaries.

---

## 💾 Solution

See [`solution.sql`](solution.sql) for the SQL query with inline comments.

---

## 🧩 Tags

`SQL`, `Subquery`, `Ranking`, `Top K`, `LeetCode Easy`, `NULL Handling`
