# LeetCode SQL Problem 1068 - Product Sales Analysis I

## 📘 Problem Description

Given two tables, `Sales` and `Product`, report the `product_name`, `year`, and `price` for each sale in the `Sales` table.

---

## 🗃️ Table Schema

### Sales Table

| Column Name | Type |
|-------------|------|
| sale_id     | int  |
| product_id  | int  |
| year        | int  |
| quantity    | int  |
| price       | int  |

- `(sale_id, year)` is the primary key.
- `product_id` references the Product table.
- `price` is the price per unit.

### Product Table

| Column Name  | Type    |
|--------------|---------|
| product_id   | int     |
| product_name | varchar |

- `product_id` is the primary key.

---

## 🧪 Example

### Input

Sales table:

| sale_id | product_id | year | quantity | price |
|---------|------------|------|----------|-------|
| 1       | 100        | 2008 | 10       | 5000  |
| 2       | 100        | 2009 | 12       | 5000  |
| 7       | 200        | 2011 | 15       | 9000  |

Product table:

| product_id | product_name |
|------------|--------------|
| 100        | Nokia        |
| 200        | Apple        |
| 300        | Samsung      |

### Output

| product_name | year | price |
|--------------|------|-------|
| Nokia        | 2008 | 5000  |
| Nokia        | 2009 | 5000  |
| Apple        | 2011 | 9000  |

---

## 🧠 Explanation

- For `sale_id = 1`, Nokia was sold in 2008 at 5000 per unit.
- For `sale_id = 2`, Nokia was sold in 2009 at 5000 per unit.
- For `sale_id = 7`, Apple was sold in 2011 at 9000 per unit.
- The query returns the product name, year, and price of each sale.
