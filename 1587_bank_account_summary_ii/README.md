# LeetCode SQL Problem 1587 - Bank Account Summary II

## 📘 Problem Description

Given two tables — `Users` and `Transactions` — write a solution to report the **name** and **balance** of users whose balance is **greater than 10,000**.

- The **balance** of an account is the sum of the `amount` values from all its transactions.
- `amount` can be positive (money received) or negative (money transferred).
- All accounts start with a balance of 0.

Return the result table with:

- `name`
- `balance`

The output can be returned in any order.

---

## 🗃️ Table Schemas

### Users Table

| Column Name | Type    |
|-------------|---------|
| account     | int     |
| name        | varchar |

- `account` is the **primary key**.
- Each row contains a user's bank account number.
- Names are unique.

### Transactions Table

| Column Name   | Type |
|----------------|------|
| trans_id       | int  |
| account        | int  |
| amount         | int  |
| transacted_on  | date |

- `trans_id` is the **primary key**.
- Each row records a transaction for an account.
- `amount` is:
  - Positive → user **received** money
  - Negative → user **transferred** money

---

## 🧪 Example

### Input

#### Users

| account  | name    |
|----------|---------|
| 900001   | Alice   |
| 900002   | Bob     |
| 900003   | Charlie |

#### Transactions

| trans_id | account  | amount | transacted_on |
|----------|----------|--------|----------------|
| 1        | 900001   | 7000   | 2020-08-01     |
| 2        | 900001   | 7000   | 2020-09-01     |
| 3        | 900001   | -3000  | 2020-09-02     |
| 4        | 900002   | 1000   | 2020-09-12     |
| 5        | 900003   | 6000   | 2020-08-07     |
| 6        | 900003   | 6000   | 2020-09-07     |
| 7        | 900003   | -4000  | 2020-09-11     |

### Output

| name   | balance |
|--------|---------|
| Alice  | 11000   |

---

## 🧠 Explanation

- **Alice (900001)**:
  - Balance = 7000 + 7000 - 3000 = **11000** ✅
- **Bob (900002)**:
  - Balance = 1000 ❌
- **Charlie (900003)**:
  - Balance = 6000 + 6000 - 4000 = **8000** ❌

Only Alice meets the condition (balance > 10000).
