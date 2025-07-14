# LeetCode SQL Problem 620 - Not Boring Movies

## 📘 Problem Description

Given a `Cinema` table, report all movies that meet the following conditions:

- Have an odd-numbered `id`
- Have a `description` that is **not** "boring"

Return the results ordered by `rating` in descending order.

---

## 🗃️ Table Schema

### Cinema Table

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| movie       | varchar |
| description | varchar |
| rating      | float   |

- `id` is the primary key.
- `rating` is a float with two decimal places in the range [0, 10].

---

## 🧪 Example

### Input

| id | movie      | description | rating |
|----|------------|-------------|--------|
| 1  | War        | great 3D    | 8.9    |
| 2  | Science    | fiction     | 8.5    |
| 3  | irish      | boring      | 6.2    |
| 4  | Ice song   | Fantacy     | 8.6    |
| 5  | House card | Interesting | 9.1    |

### Output

| id | movie      | description | rating |
|----|------------|-------------|--------|
| 5  | House card | Interesting | 9.1    |
| 1  | War        | great 3D    | 8.9    |

---

## 🧠 Explanation

- The odd `id` movies are with ids 1, 3, and 5.
- Movie with `id=3` is described as "boring" so it is excluded.
- Movies 1 and 5 meet the criteria.
- They are sorted by `rating` descending.

---