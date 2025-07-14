# LeetCode SQL Problem 1661 - Average Time of Process per Machine

## 📘 Problem Description

Given a table `Activity` that records start and end timestamps of processes running on multiple machines, write a solution to find the **average time** each machine takes to complete a process.

- Each process on a machine has exactly one 'start' and one 'end' activity.
- The time to complete a process is `end_timestamp - start_timestamp`.
- The average processing time for a machine is the total time taken for all its processes divided by the number of processes.
- Round the average processing time to 3 decimal places.

Return the result table with:

- `machine_id`
- `processing_time` (average time per process rounded to 3 decimals)

You may return the result in any order.

---

## 🗃️ Table Schema

### Activity Table

| Column Name    | Type    |
|----------------|---------|
| machine_id     | int     |
| process_id     | int     |
| activity_type  | enum    |
| timestamp      | float   |

- `(machine_id, process_id, activity_type)` is a primary key.
- `activity_type` can be `'start'` or `'end'`.
- Each `(machine_id, process_id)` pair has exactly one `'start'` and one `'end'`.
- The `'start'` timestamp is always before the `'end'` timestamp.

---

## 🧪 Example

### Input

| machine_id | process_id | activity_type | timestamp |
|------------|------------|---------------|-----------|
| 0          | 0          | start         | 0.712     |
| 0          | 0          | end           | 1.520     |
| 0          | 1          | start         | 3.140     |
| 0          | 1          | end           | 4.120     |
| 1          | 0          | start         | 0.550     |
| 1          | 0          | end           | 1.550     |
| 1          | 1          | start         | 0.430     |
| 1          | 1          | end           | 1.420     |
| 2          | 0          | start         | 4.100     |
| 2          | 0          | end           | 4.512     |
| 2          | 1          | start         | 2.500     |
| 2          | 1          | end           | 5.000     |

### Output

| machine_id | processing_time |
|------------|-----------------|
| 0          | 0.894           |
| 1          | 0.995           |
| 2          | 1.456           |

---

## 🧠 Explanation

- Machine 0:
  - Process 0 time = 1.520 - 0.712 = 0.808
  - Process 1 time = 4.120 - 3.140 = 0.980
  - Average = (0.808 + 0.980) / 2 = 0.894
- Machine 1:
  - Process 0 time = 1.550 - 0.550 = 1.000
  - Process 1 time = 1.420 - 0.430 = 0.990
  - Average = (1.000 + 0.990) / 2 = 0.995
- Machine 2:
  - Process 0 time = 4.512 - 4.100 = 0.412
  - Process 1 time = 5.000 - 2.500 = 2.500
  - Average = (0.412 + 2.500) / 2 = 1.456
