# LeetCode SQL Problem 1581 - Customer Who Visited but Did Not Make Any Transactions

## 📘 Problem Description

Given two tables — `Visits` and `Transactions` — write a solution to find customers who **visited the mall but made no transactions**, along with the **number of times** they made such visits.

Return the result table with:

- `customer_id`
- `count_no_trans`: number of visits with **no transactions**

You can return the result in any order.

---

## 🗃️ Table Schemas

### Visits Table

| Column Name | Type |
|-------------|------|
| visit_id    | int  |
| customer_id | int  |

- `visit_id` is unique.

### Transactions Table

| Column Name    | Type |
|----------------|------|
| transaction_id | int  |
| visit_id       | int  |
| amount         | int  |

- `transaction_id` is unique.

---

## 🧪 Example

### Input

#### Visits

| visit_id | customer_id |
|----------|-------------|
| 1        | 23          |
| 2        | 9           |
| 4        | 30          |
| 5        | 54          |
| 6        | 96          |
| 7        | 54          |
| 8        | 54          |

#### Transactions

| transaction_id | visit_id | amount |
|----------------|----------|--------|
| 2              | 5        | 310    |
| 3              | 5        | 300    |
| 9              | 5        | 200    |
| 12             | 1        | 910    |
| 13             | 2        | 970    |

### Output

| customer_id | count_no_trans |
|-------------|----------------|
| 54          | 2              |
| 30          | 1              |
| 96          | 1              |

---

## 🧠 Explanation

- **Customer 23**: `visit_id 1` → 1 transaction → ❌
- **Customer 9**: `visit_id 2` → 1 transaction → ❌
- **Customer 30**: `visit_id 4` → no transaction → ✅ (count = 1)
- **Customer 54**:
    - `visit_id 5` → 3 transactions → ❌
    - `visit_id 7 & 8` → no transaction → ✅✅ (count = 2)
- **Customer 96**: `visit_id 6` → no transaction → ✅ (count = 1)

---