# LeetCode SQL Problem 1327 - List the Products Ordered in a Period

## 📘 Problem Description

Given two tables, `Products` and `Orders`, find the names of products that have at least **100 units ordered** in **February 2020**, along with the total units ordered for those products.

- The `Orders` table may contain duplicate rows.
- `unit` indicates the number of units ordered on a specific date.
- Only consider orders from February 2020.
- Return the product names and their total units ordered.
- The result can be returned in any order.

---

## 🗃️ Table Schemas

### Products Table

| Column Name      | Type    |
|------------------|---------|
| product_id       | int     |
| product_name     | varchar |
| product_category | varchar |

- `product_id` is the primary key.

### Orders Table

| Column Name | Type |
|-------------|-------|
| product_id  | int   |
| order_date  | date  |
| unit        | int   |

- `product_id` is a foreign key referencing `Products`.
- Multiple rows may have the same product_id and order_date.

---

## 🧪 Example

### Input

Products table:

| product_id | product_name          | product_category |
|------------|-----------------------|------------------|
| 1          | Leetcode Solutions    | Book             |
| 2          | Jewels of Stringology | Book             |
| 3          | HP                    | Laptop           |
| 4          | Lenovo                | Laptop           |
| 5          | Leetcode Kit          | T-shirt          |

Orders table:

| product_id | order_date | unit |
|------------|------------|------|
| 1          | 2020-02-05 | 60   |
| 1          | 2020-02-10 | 70   |
| 2          | 2020-01-18 | 30   |
| 2          | 2020-02-11 | 80   |
| 3          | 2020-02-17 | 2    |
| 3          | 2020-02-24 | 3    |
| 4          | 2020-03-01 | 20   |
| 4          | 2020-03-04 | 30   |
| 4          | 2020-03-04 | 60   |
| 5          | 2020-02-25 | 50   |
| 5          | 2020-02-27 | 50   |
| 5          | 2020-03-01 | 50   |

### Output

| product_name       | unit |
|--------------------|------|
| Leetcode Solutions | 130  |
| Leetcode Kit       | 100  |

---

## 🧠 Explanation

- Product 1 ordered units in February 2020 total to 60 + 70 = 130.
- Product 5 ordered units in February 2020 total to 50 + 50 = 100.
- Other products did not reach 100 units in February 2020.
