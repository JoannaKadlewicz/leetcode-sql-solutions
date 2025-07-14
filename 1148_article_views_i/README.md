# LeetCode SQL Problem 1148 - Article Views I

## 📘 Problem Description

Given a `Views` table, find all authors who have viewed at least one of their own articles.

Return the result sorted by the author’s id in ascending order.

---

## 🗃️ Table Schema

### Views Table

| Column Name | Type |
|-------------|------|
| article_id  | int  |
| author_id   | int  |
| viewer_id   | int  |
| view_date   | date |

- There is no primary key in this table; duplicates may exist.
- `author_id` equals `viewer_id` indicates the author viewed their own article.

---

## 🧪 Example

### Input

| article_id | author_id | viewer_id | view_date  |
|------------|-----------|-----------|------------|
| 1          | 3         | 5         | 2019-08-01 |
| 1          | 3         | 6         | 2019-08-02 |
| 2          | 7         | 7         | 2019-08-01 |
| 2          | 7         | 6         | 2019-08-02 |
| 4          | 7         | 1         | 2019-07-22 |
| 3          | 4         | 4         | 2019-07-21 |
| 3          | 4         | 4         | 2019-07-21 |

### Output

| id |
|----|
| 4  |
| 7  |

---

## 🧠 Explanation

- Authors 4 and 7 have viewed their own articles.
- Author 4 viewed article 3 (author_id = viewer_id = 4).
- Author 7 viewed article 2 (author_id = viewer_id = 7).
- Result is sorted ascending by author id.
