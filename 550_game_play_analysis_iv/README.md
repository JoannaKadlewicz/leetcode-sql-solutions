# LeetCode SQL Problem 550 - Game Play Analysis IV

## 📘 Problem Description

Write a SQL query to **report the fraction of players who logged in again on the day after their first login**, rounded to **2 decimal places**.

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
- Each row records a player's login on a specific day with the number of games they played.

---

## 🛠️ Requirements

- Find the number of players who logged in on the **next day after their first login**.
- Divide that number by the total number of unique players.
- Round the result to **2 decimal places**.
- Output should include a single column: `fraction`.

---

## 🧪 Example

### Input

**Activity Table**

| player_id | device_id | event_date | games_played |
|-----------|-----------|------------|--------------|
| 1         | 2         | 2016-03-01 | 5            |
| 1         | 2         | 2016-03-02 | 6            |
| 2         | 3         | 2017-06-25 | 1            |
| 3         | 1         | 2016-03-02 | 0            |
| 3         | 4         | 2018-07-03 | 5            |

### Output

| fraction |
|----------|
| 0.33     |

---

### Explanation

- **Player 1**: First login = `2016-03-01`, next day login = `2016-03-02` ✅
- **Player 2**: No login on the day after `2017-06-25` ❌
- **Player 3**: First login = `2016-03-02`, but no login on `2016-03-03` ❌

Total players = 3  
Players who returned the next day = 1  
**Fraction = 1 / 3 = 0.33**
