# LeetCode SQL Problem 584 - Find Customer Referee

## 📘 Problem Description

Write a SQL query to **find the names of customers who are _not_ referred by the customer with id = 2**.

Return the result table in **any order**.

---

## 🗃️ Table Schema

### Customer Table

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |
| referee_id  | int     |

- `id` is the **primary key**.
- Each row indicates a customer and the `referee_id` of the person who referred them.
- A `null` value in `referee_id` means the customer was not referred by anyone.

---

## 🛠️ Requirements

- Return the `name` of every customer **not referred by the customer with id = 2**.
- This includes:
  - Customers whose `referee_id` is `NULL`, or
  - Customers whose `referee_id` is not equal to `2`.

---

## 🧪 Example

### Input

**Customer Table**

| id | name | referee_id |
|----|------|------------|
| 1  | Will | null       |
| 2  | Jane | null       |
| 3  | Alex | 2          |
| 4  | Bill | null       |
| 5  | Zack | 1          |
| 6  | Mark | 2          |

### Output

| name |
|------|
| Will |
| Jane |
| Bill |
| Zack |

---

### Explanation

- **Alex** and **Mark** are referred by customer `2` → excluded.
- The others either were referred by someone else or not referred at all → included.
