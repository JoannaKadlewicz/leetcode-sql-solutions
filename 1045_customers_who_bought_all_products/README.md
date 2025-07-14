# LeetCode SQL Problem 1045 - Customers Who Bought All Products

## 📘 Problem Description

Given two tables:

- `Customer(customer_id, product_key)` which records each product bought by customers.
- `Product(product_key)` which lists all products available.

Find all customers who have bought **all** the products listed in the `Product` table.

Return the list of `customer_id`s.

---

## 🗃️ Table Schemas

### Customer Table

| Column Name  | Type |
|--------------|------|
| customer_id  | int  |
| product_key  | int  |

- May contain duplicate rows.
- `product_key` references `Product.product_key`.

### Product Table

| Column Name  | Type |
|--------------|------|
| product_key  | int  |

- Primary key.

---

## 🧪 Example

### Input

Customer table:

| customer_id | product_key |
|-------------|-------------|
| 1           | 5           |
| 2           | 6           |
| 3           | 5           |
| 3           | 6           |
| 1           | 6           |

Product table:

| product_key |
|-------------|
| 5           |
| 6           |

### Output

| customer_id |
|-------------|
| 1           |
| 3           |

---