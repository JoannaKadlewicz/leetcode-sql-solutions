# LeetCode SQL Problem 1741 - Find Total Time Spent by Each Employee

## 📘 Problem Description

Given an `Employees` table tracking the entry and exit times of employees at the office, write a SQL query to calculate the **total time** (in minutes) spent by **each employee** on **each day** at the office.

- Each row indicates one visit to the office on a specific `event_day`.
- An employee can have **multiple visits per day**.
- The time spent for one visit is calculated as `out_time - in_time`.

Return the result table in any order.

---

## 🗃️ Table Schema

### Employees Table

| Column Name | Type |
|-------------|------|
| emp_id      | int  |
| event_day   | date |
| in_time     | int  |
| out_time    | int  |

- `(emp_id, event_day, in_time)` is the primary key.
- `in_time` and `out_time` are measured in **minutes** between `1` and `1440`.
- It is guaranteed that `in_time < out_time` and that multiple records for an employee on the same day will not overlap in time.

---

## 🧪 Example

### Input

| emp_id | event_day  | in_time | out_time |
|--------|------------|---------|----------|
| 1      | 2020-11-28 | 4       | 32       |
| 1      | 2020-11-28 | 55      | 200      |
| 1      | 2020-12-03 | 1       | 42       |
| 2      | 2020-11-28 | 3       | 33       |
| 2      | 2020-12-09 | 47      | 74       |

### Output

| day        | emp_id | total_time |
|------------|--------|------------|
| 2020-11-28 | 1      | 173        |
| 2020-11-28 | 2      | 30         |
| 2020-12-03 | 1      | 41         |
| 2020-12-09 | 2      | 27         |

---

## 🧠 Explanation

- **Employee 1** on `2020-11-28`:
    - (32 - 4) = 28 minutes
    - (200 - 55) = 145 minutes
    - Total = 173 minutes

- **Employee 1** on `2020-12-03`:
    - (42 - 1) = 41 minutes

- **Employee 2** on `2020-11-28`:
    - (33 - 3) = 30 minutes

- **Employee 2** on `2020-12-09`:
    - (74 - 47) = 27 minutes

---