# LeetCode SQL Problem 1484 - Group Sold Products By The Date

## 📘 Problem Description

Given the `Activities` table, write a solution to find, for each `sell_date`, the **number of distinct products** sold and a **comma-separated list of those product names**, sorted lexicographically.

- You must:
  - Count only **distinct** products per day.
  - Return the `sell_date`, the count of distinct products (`num_sold`), and the sorted, comma-separated product names (`products`).
  - Order the result by `sell_date` in **ascending** order.

---

## 🗃️ Table Schema

### Activities Table

| Column Name | Type    |
|-------------|---------|
| sell_date   | date    |
| product     | varchar |

- No primary key; duplicates may exist.
- Each row represents one instance of a product being sold on a given date.

---

## 🧪 Example

### Input

| sell_date  | product     |
|------------|-------------|
| 2020-05-30 | Headphone   |
| 2020-06-01 | Pencil      |
| 2020-06-02 | Mask        |
| 2020-05-30 | Basketball  |
| 2020-06-01 | Bible       |
| 2020-06-02 | Mask        |
| 2020-05-30 | T-Shirt     |

### Output

| sell_date  | num_sold | products                     |
|------------|----------|------------------------------|
| 2020-05-30 | 3        | Basketball,Headphone,T-Shirt |
| 2020-06-01 | 2        | Bible,Pencil                 |
| 2020-06-02 | 1        | Mask                         |

---

## 🧠 Explanation

- On **2020-05-30**, the products sold were: `Headphone`, `Basketball`, and `T-Shirt`. After sorting: `Basketball,Headphone,T-Shirt`, count = 3.
- On **2020-06-01**, the products sold were: `Pencil`, `Bible`. After sorting: `Bible,Pencil`, count = 2.
- On **2020-06-02**, only `Mask` was sold (appears twice but counted once), so count = 1.

