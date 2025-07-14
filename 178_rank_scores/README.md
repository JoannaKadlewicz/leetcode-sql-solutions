# LeetCode SQL Problem 178 - Rank Scores

## 📘 Problem Description

Given the `Scores` table, write a SQL query to rank the scores based on the following rules:

- Scores should be ranked from **highest to lowest**.
- If multiple scores are the same (a tie), they should receive the **same rank**.
- The next distinct score should receive the next **consecutive integer rank** (no gaps in ranking).
- Return the result table **ordered by score descending**.

---

## 🗃️ Table Schema

### Scores Table

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| score       | decimal |

- `id` is the primary key (unique for each row).
- Each row contains a score for a game, with two decimal places.

---

## 🧪 Example

### Input

**Scores Table**

| id | score |
|----|-------|
| 1  | 3.50  |
| 2  | 3.65  |
| 3  | 4.00  |
| 4  | 3.85  |
| 5  | 4.00  |
| 6  | 3.65  |

### Output

| score | rank |
|-------|------|
| 4.00  | 1    |
| 4.00  | 1    |
| 3.85  | 2    |
| 3.65  | 3    |
| 3.65  | 3    |
| 3.50  | 4    |

---

## 💾 Solution

See [`solution.sql`](solution.sql) for the SQL query with inline comments.

---