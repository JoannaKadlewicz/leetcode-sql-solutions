# LeetCode SQL Problem 180 - Consecutive Numbers

## 📘 Problem Description

Given the `Logs` table, write a SQL query to find **all numbers that appear at least three times consecutively**.  
Return the result table in **any order**.

---

## 🗃️ Table Schema

### Logs Table

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| num         | varchar |

- `id` is the primary key (auto-incremented starting from 1).
- Each row contains a numeric value stored as a string (`varchar`).

---

## 🧪 Example

### Input

**Logs Table**

| id | num |
|----|-----|
| 1  | 1   |
| 2  | 1   |
| 3  | 1   |
| 4  | 2   |
| 5  | 1   |
| 6  | 2   |
| 7  | 2   |

### Output

| ConsecutiveNums |
|-----------------|
| 1               |

---

### Explanation

- The number `1` appears three times consecutively at `id` values 1, 2, and 3.
- Other values like `2` only appear consecutively at most twice.

---

## 💾 Solution

See [`solution.sql`](solution.sql) for the SQL query with inline comments.

---