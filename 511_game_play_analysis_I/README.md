# LeetCode SQL Problem 511 - Game Play Analysis I

## 📘 Problem Description

Write a SQL query to **find the first login date for each player**.

---

## 🗃️ Table Schema

### Activity Table

| Column Name  | Type |
|--------------|------|
| player_id    | int  |
| device_id    | int  |
| event_date   | date |
| games_played | int  |

- `(player_id, event_date)` is the **primary key**.
- Each row is a record of a player’s login on a certain day using a specific device and the number of games played.

---

## 🛠️ Requirements

- Return each `player_id` with their **first login date**.
- Output column names should be: `player_id`, `first_login`.
- Return the result table in any order.

---

## 🧪 Example

### Input

**Activity Table**

| player_id | device_id | event_date | games_played |
|-----------|-----------|------------|--------------|
| 1         | 2         | 2016-03-01 | 5            |
| 1         | 2         | 2016-05-02 | 6            |
| 2         | 3         | 2017-06-25 | 1            |
| 3         | 1         | 2016-03-02 | 0            |
| 3         | 4         | 2018-07-03 | 5            |

### Output

| player_id | first_login |
|-----------|-------------|
| 1         | 2016-03-01  |
| 2         | 2017-06-25  |
| 3         | 2016-03-02  |

---

### Explanation

- Player 1 first logged in on **2016-03-01**
- Player 2 first logged in on **2017-06-25**
- Player 3 first logged in on **2016-03-02**
