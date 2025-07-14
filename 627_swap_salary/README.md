# LeetCode SQL Problem 627 - Swap Salary

## 📘 Problem Description

Given a `Salary` table, update the `sex` column by swapping all `'f'` values with `'m'` and all `'m'` values with `'f'`.

- Use a **single** `UPDATE` statement.
- No intermediate or temporary tables allowed.
- Do **not** use a `SELECT` statement inside the update.

---

## 🗃️ Table Schema

### Salary Table

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |
| sex         | ENUM    |
| salary      | int     |

- `id` is the primary key.
- `sex` is an ENUM with values `'m'` and `'f'`.

---

## 🧪 Example

### Input

| id | name | sex | salary |
|----|------|-----|--------|
| 1  | A    | m   | 2500   |
| 2  | B    | f   | 1500   |
| 3  | C    | m   | 5500   |
| 4  | D    | f   | 500    |

### Output after update

| id | name | sex | salary |
|----|------|-----|--------|
| 1  | A    | f   | 2500   |
| 2  | B    | m   | 1500   |
| 3  | C    | f   | 5500   |
| 4  | D    | m   | 500    |

---
