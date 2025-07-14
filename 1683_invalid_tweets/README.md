# LeetCode SQL Problem 1683 - Invalid Tweets

## 📘 Problem Description

Given a table `Tweets` with columns `tweet_id` and `content`, find the IDs of the **invalid tweets**.

A tweet is considered **invalid** if the length of its `content` is **strictly greater than 15** characters.

Return the result table in any order.

---

## 🗃️ Table Schema

### Tweets Table

| Column Name | Type    |
|-------------|---------|
| tweet_id    | int     |
| content     | varchar |

- `tweet_id` is the primary key.
- `content` consists of alphanumeric characters, spaces (`' '`), and exclamation marks (`'!'`) only.

---

## 🧪 Example

### Input

| tweet_id | content                            |
|----------|----------------------------------|
| 1        | Let us Code                      |
| 2        | More than fifteen chars are here! |

### Output

| tweet_id |
|----------|
| 2        |

---

## 🧠 Explanation

- Tweet with `tweet_id = 1` has length 11 → valid.
- Tweet with `tweet_id = 2` has length 33 → invalid (length > 15).

Therefore, only `tweet_id = 2` is returned.
