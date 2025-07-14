# LeetCode SQL Problem 1407 - Top Travellers

## 📘 Problem Description

Given two tables, `Users` and `Rides`, write a solution to report the **total distance traveled** by each user.

- Every user must be included, even if they have not taken any rides (in that case, total distance = 0).
- Sort the results by:
  1. `travelled_distance` in **descending** order
  2. If tied, sort by `name` in **ascending** order

---

## 🗃️ Table Schemas

### Users Table

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |

- `id` is the unique identifier for each user.

### Rides Table

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| user_id     | int     |
| distance    | int     |

- `id` is the unique identifier for each ride.
- `user_id` refers to the user who took the ride.
- `distance` is the number of miles traveled in that ride.

---

## 🧪 Example

### Input

#### Users

| id  | name     |
|-----|----------|
| 1   | Alice    |
| 2   | Bob      |
| 3   | Alex     |
| 4   | Donald   |
| 7   | Lee      |
| 13  | Jonathan |
| 19  | Elvis    |

#### Rides

| id  | user_id | distance |
|-----|---------|----------|
| 1   | 1       | 120      |
| 2   | 2       | 317      |
| 3   | 3       | 222      |
| 4   | 7       | 100      |
| 5   | 13      | 312      |
| 6   | 19      | 50       |
| 7   | 7       | 120      |
| 8   | 19      | 400      |
| 9   | 7       | 230      |

### Output

| name     | travelled_distance |
|----------|--------------------|
| Elvis    | 450                |
| Lee      | 450                |
| Bob      | 317                |
| Jonathan | 312                |
| Alex     | 222                |
| Alice    | 120                |
| Donald   | 0                  |

---

## 🧠 Explanation

- **Lee** took 3 rides totaling `100 + 120 + 230 = 450`.
- **Elvis** took 2 rides totaling `50 + 400 = 450`.
- Although both traveled the same distance, **Elvis** comes before **Lee** alphabetically.
- **Donald** took no rides, so his distance is `0` but still appears in the results.
