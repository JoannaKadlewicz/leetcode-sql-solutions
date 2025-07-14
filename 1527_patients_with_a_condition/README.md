# LeetCode SQL Problem 1527 - Patients With a Condition

## 📘 Problem Description

Given the `Patients` table, write a solution to find all patients who have **Type I Diabetes**, identified by any condition that starts with the **`DIAB1`** prefix.

- The `conditions` column contains zero or more diagnosis codes separated by spaces.
- A patient may have multiple conditions, and we're only interested in those who have at least one condition starting with `DIAB1`.

Return the result table with the following columns: `patient_id`, `patient_name`, and `conditions`.  
The order of rows in the result does not matter.

---

## 🗃️ Table Schema

### Patients Table

| Column Name  | Type    |
|--------------|---------|
| patient_id   | int     |
| patient_name | varchar |
| conditions   | varchar |

- `patient_id` is the primary key.
- `conditions` is a space-separated string of condition codes.

---

## 🧪 Example

### Input

| patient_id | patient_name | conditions   |
|------------|--------------|--------------|
| 1          | Daniel       | YFEV COUGH   |
| 2          | Alice        |              |
| 3          | Bob          | DIAB100 MYOP |
| 4          | George       | ACNE DIAB100 |
| 5          | Alain        | DIAB201      |

### Output

| patient_id | patient_name | conditions   |
|------------|--------------|--------------|
| 3          | Bob          | DIAB100 MYOP |
| 4          | George       | ACNE DIAB100 |

---

## 🧠 Explanation

- We're looking for any condition that starts with `DIAB1`.
- Bob has `"DIAB100 MYOP"` which contains `DIAB100` → matches.
- George has `"ACNE DIAB100"` which also contains `DIAB100` → matches.
- Alain has `DIAB201`, which does **not** match `DIAB1` → no match.
