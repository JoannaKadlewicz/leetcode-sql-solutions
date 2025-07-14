# LeetCode SQL Problem 196 - Delete Duplicate Emails

## 📘 Problem Description

Write a SQL query to **delete all duplicate emails** in the `Person` table, keeping only **one unique email** with the **smallest id**.

---

## 🗃️ Table Schema

### Person Table

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| email       | varchar |

- `id` is the primary key (contains unique values).
- Each row of the table contains an email.
- Emails will not contain uppercase letters.

---

## 🛠️ Requirements

- You must use a **DELETE** statement (not SELECT).
- After running your script, only one row per duplicate email should remain — the one with the **lowest `id`**.

---

## 🧪 Example

### Input

**Person Table**

| id | email            |
|----|------------------|
| 1  | john@example.com |
| 2  | bob@example.com  |
| 3  | john@example.com |

### Output

| id | email            |
|----|------------------|
| 1  | john@example.com |
| 2  | bob@example.com  |

---

### Explanation

- `john@example.com` appears twice.
- Only the row with the **smallest `id = 1`** is kept.
- The other duplicate is **deleted**.
