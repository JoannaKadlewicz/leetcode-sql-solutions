# LeetCode SQL Problem 182 - Duplicate Emails

## 📘 Problem Description

Given the `Person` table, write a SQL query to **report all the duplicate emails**.  
Return the result table in **any order**.

---

## 🗃️ Table Schema

### Person Table

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| email       | varchar |

- `id` is the primary key (contains unique values).
- Each row contains an email address.
- Emails are guaranteed to contain only lowercase letters and are **not NULL**.

---

## 🧪 Example

### Input

**Person Table**

| id | email   |
|----|---------|
| 1  | a@b.com |
| 2  | c@d.com |
| 3  | a@b.com |

### Output

| Email   |
|---------|
| a@b.com |

---

### Explanation

- The email `a@b.com` appears more than once in the table.
- Only emails that occur **more than once** should be included in the result.
