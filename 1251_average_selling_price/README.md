# LeetCode SQL Problem 1251 - Average Selling Price

## 📘 Problem Description

Given two tables, `Prices` and `UnitsSold`, find the average selling price for each product.

- The `Prices` table lists the price of each product for specific time periods.
- The `UnitsSold` table lists the number of units sold for each product on specific purchase dates.

Calculate the weighted average selling price for each product, rounding to 2 decimal places.  
If a product has no sales, the average price is assumed to be 0.

---

## 🗃️ Table Schemas

### Prices Table

| Column Name | Type |
|-------------|------|
| product_id  | int  |
| start_date  | date |
| end_date    | date |
| price       | int  |

- `(product_id, start_date, end_date)` is the primary key.
- No overlapping price periods for the same product.

### UnitsSold Table

| Column Name   | Type |
|---------------|------|
| product_id    | int  |
| purchase_date | date |
| units         | int  |

- May contain duplicate rows.
- Shows units sold for each product on specific dates.

---

## 🧪 Example

### Input

Prices table:

| product_id | start_date | end_date   | price |
|------------|------------|------------|-------|
| 1          | 2019-02-17 | 2019-02-28 | 5     |
| 1          | 2019-03-01 | 2019-03-22 | 20    |
| 2          | 2019-02-01 | 2019-02-20 | 15    |
| 2          | 2019-02-21 | 2019-03-31 | 30    |

UnitsSold table:

| product_id | purchase_date | units |
|------------|---------------|-------|
| 1          | 2019-02-25    | 100   |
| 1          | 2019-03-01    | 15    |
| 2          | 2019-02-10    | 200   |
| 2          | 2019-03-22    | 30    |

### Output

| product_id | average_price |
|------------|---------------|
| 1          | 6.96          |
| 2          | 16.96         |

---