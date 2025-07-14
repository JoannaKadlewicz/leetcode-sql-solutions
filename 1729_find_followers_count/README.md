# LeetCode SQL Problem 1729 - Find Followers Count

## 📘 Problem Description

Given a table `Followers` containing user and follower IDs:

- `user_id`: the user being followed,
- `follower_id`: the user who follows the `user_id`,

write a SQL query to return, for each user, the number of followers they have.

Return the result ordered by `user_id` in ascending order.

---

## 🗃️ Table Schema

### Followers Table

| Column Name | Type |
|-------------|------|
| user_id     | int  |
| follower_id | int  |

- `(user_id, follower_id)` is the primary key.
- This table shows relationships where `follower_id` follows `user_id`.

---

## 🧪 Example

### Input

| user_id | follower_id |
|---------|-------------|
| 0       | 1           |
| 1       | 0           |
| 2       | 0           |
| 2       | 1           |

### Output

| user_id | followers_count |
|---------|-----------------|
| 0       | 1               |
| 1       | 1               |
| 2       | 2               |

---

## 🧠 Explanation

- User `0` has follower `{1}` → count is 1.
- User `1` has follower `{0}` → count is 1.
- User `2` has followers `{0,1}` → count is 2.
