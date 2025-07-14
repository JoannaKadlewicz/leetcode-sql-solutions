# LeetCode SQL Problem 1667 - Fix Names in a Table

## 📘 Problem Description

Given a table `Users` with columns `user_id` and `name`, where names may have inconsistent capitalization (mix of uppercase and lowercase letters), write a SQL query to **fix the names** so that:

- Only the **first character** is uppercase.
- The **rest of the characters** are lowercase.

Return the result table ordered by `user_id`.

---

## 🗃️ Table Schema

### Users Table

| Column Name | Type    |
|-------------|---------|
| user_id     | int     |
| name        | varchar |

- `user_id` is the primary key.
- `name` consists only of alphabetic characters (uppercase or lowercase).

---

## 🧪 Example

### Input

| user_id | name  |
|---------|-------|
| 1       | aLice |
| 2       | bOB   |

### Output

| user_id | name  |
|---------|-------|
| 1       | Alice |
| 2       | Bob   |

---

## 🧠 Explanation

- For user_id 1, `"aLice"` becomes `"Alice"`.
- For user_id 2, `"bOB"` becomes `"Bob"`.

The first character is capitalized, and the rest are converted to lowercase.
