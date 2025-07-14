# LeetCode SQL Problem 1693 - Daily Leads and Partners

## 📘 Problem Description

Given a table `DailySales` containing sales data with the columns:

- `date_id`: the date of the sale,
- `make_name`: the product name,
- `lead_id`: the lead identifier,
- `partner_id`: the partner identifier,

find for each combination of `date_id` and `make_name`:

- The number of **distinct lead_id's**,
- The number of **distinct partner_id's**.

Return the result table with columns:

- `date_id`
- `make_name`
- `unique_leads`
- `unique_partners`

The result can be returned in any order.

---

## 🗃️ Table Schema

### DailySales Table

| Column Name | Type    |
|-------------|---------|
| date_id     | date    |
| make_name   | varchar |
| lead_id     | int     |
| partner_id  | int     |

- There is no primary key; duplicates may exist.
- `make_name` contains lowercase English letters only.

---

## 🧪 Example

### Input

| date_id   | make_name | lead_id | partner_id |
|-----------|-----------|---------|------------|
| 2020-12-8 | toyota    | 0       | 1          |
| 2020-12-8 | toyota    | 1       | 0          |
| 2020-12-8 | toyota    | 1       | 2          |
| 2020-12-7 | toyota    | 0       | 2          |
| 2020-12-7 | toyota    | 0       | 1          |
| 2020-12-8 | honda     | 1       | 2          |
| 2020-12-8 | honda     | 2       | 1          |
| 2020-12-7 | honda     | 0       | 1          |
| 2020-12-7 | honda     | 1       | 2          |
| 2020-12-7 | honda     | 2       | 1          |

### Output

| date_id   | make_name | unique_leads | unique_partners |
|-----------|-----------|--------------|-----------------|
| 2020-12-8 | toyota    | 2            | 3               |
| 2020-12-7 | toyota    | 1            | 2               |
| 2020-12-8 | honda     | 2            | 2               |
| 2020-12-7 | honda     | 3            | 2               |

---

## 🧠 Explanation

- For `2020-12-8`, `toyota`:
    - Leads: {0, 1} → 2 unique leads.
    - Partners: {0, 1, 2} → 3 unique partners.
- For `2020-12-7`, `toyota`:
    - Leads: {0} → 1 unique lead.
    - Partners: {1, 2} → 2 unique partners.
- For `2020-12-8`, `honda`:
    - Leads: {1, 2} → 2 unique leads.
    - Partners: {1, 2} → 2 unique partners.
- For `2020-12-7`, `honda`:
    - Leads: {0, 1, 2} → 3 unique leads.
    - Partners: {1, 2} → 2 unique partners.
