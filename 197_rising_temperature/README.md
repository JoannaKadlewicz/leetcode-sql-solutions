# LeetCode SQL Problem 197 - Rising Temperature

## 📘 Problem Description

Write a SQL query to **find all dates' `id` where the temperature was higher compared to the previous day (yesterday)**.

---

## 🗃️ Table Schema

### Weather Table

| Column Name | Type |
|-------------|------|
| id          | int  |
| recordDate  | date |
| temperature | int  |

- `id` is the unique identifier for each row.
- Each row contains temperature information for a specific date.
- There are no duplicate `recordDate` values.

---

## 🛠️ Requirements

- Return the **`id`** of days where the temperature was **higher than the previous day**.
- The result can be returned in any order.

---

## 🧪 Example

### Input

**Weather Table**

| id | recordDate | temperature |
|----|------------|-------------|
| 1  | 2015-01-01 | 10          |
| 2  | 2015-01-02 | 25          |
| 3  | 2015-01-03 | 20          |
| 4  | 2015-01-04 | 30          |

### Output

| id |
|----|
| 2  |
| 4  |

---

### Explanation

- On **2015-01-02**, the temperature rose from **10 → 25** compared to **2015-01-01**.
- On **2015-01-04**, the temperature rose from **20 → 30** compared to **2015-01-03**.
