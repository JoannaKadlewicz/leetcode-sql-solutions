# LeetCode SQL Problem 1050 - Actors and Directors Who Cooperated At Least Three Times

## 📘 Problem Description

Given an `ActorDirector` table containing records of cooperation between actors and directors by timestamps, find all `(actor_id, director_id)` pairs where the actor has cooperated with the director at least three times.

---

## 🗃️ Table Schema

### ActorDirector Table

| Column Name | Type |
|-------------|------|
| actor_id    | int  |
| director_id | int  |
| timestamp   | int  |

- `timestamp` is unique for each cooperation record.

---

## 🧪 Example

### Input

| actor_id | director_id | timestamp |
|----------|-------------|-----------|
| 1        | 1           | 0         |
| 1        | 1           | 1         |
| 1        | 1           | 2         |
| 1        | 2           | 3         |
| 1        | 2           | 4         |
| 2        | 1           | 5         |
| 2        | 1           | 6         |

### Output

| actor_id | director_id |
|----------|-------------|
| 1        | 1           |

---

## 🧠 Explanation

- The pair `(1,1)` cooperated 3 times (timestamps 0, 1, 2), which meets the requirement.
- Other pairs cooperated fewer than 3 times, so they are excluded.

---
