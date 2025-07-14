# LeetCode SQL Problem 1633 - Percentage of Users Attended a Contest

## 📘 Problem Description

Given two tables — `Users` and `Register` — write a solution to find the **percentage of users registered in each contest**.

- The percentage is calculated as the number of unique users registered in the contest divided by the total number of users, multiplied by 100.
- Round the percentage to **two decimal places**.
- Return the results ordered by percentage in **descending order**.
- If percentages tie, order by `contest_id` in **ascending order**.

The result table should have:

- `contest_id`
- `percentage` (rounded to 2 decimals)

---

## 🗃️ Table Schemas

### Users Table

| Column Name | Type    |
|-------------|---------|
| user_id     | int     |
| user_name   | varchar |

- `user_id` is the primary key.

### Register Table

| Column Name | Type    |
|-------------|---------|
| contest_id  | int     |
| user_id     | int     |

- `(contest_id, user_id)` is the primary key.

---

## 🧪 Example

### Input

#### Users

| user_id | user_name |
|---------|-----------|
| 6       | Alice     |
| 2       | Bob       |
| 7       | Alex      |

#### Register

| contest_id | user_id |
|------------|---------|
| 215        | 6       |
| 209        | 2       |
| 208        | 2       |
| 210        | 6       |
| 208        | 6       |
| 209        | 7       |
| 209        | 6       |
| 215        | 7       |
| 208        | 7       |
| 210        | 2       |
| 207        | 2       |
| 210        | 7       |

### Output

| contest_id | percentage |
|------------|------------|
| 208        | 100.0      |
| 209        | 100.0      |
| 210        | 100.0      |
| 215        | 66.67      |
| 207        | 33.33      |

---

## 🧠 Explanation

- Total users = 3 (Alice, Bob, Alex)
- Contests 208, 209, 210 each have all 3 users registered → 100%
- Contest 215 has 2 users (Alice and Alex) → (2/3)*100 = 66.67%
- Contest 207 has 1 user (Bob) → (1/3)*100 = 33.33%
- Results sorted by percentage descending, then contest_id ascending
