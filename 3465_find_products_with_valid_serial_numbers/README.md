# LeetCode SQL Problem 3465 - Find Products with Valid Serial Numbers

## 📘 Problem Description

You are given a table `products` that contains information about various products, including a textual `description`.

Your task is to **find all products whose description contains a valid serial number**.

A valid serial number follows **all** of the following rules:
- Starts with `SN` (case-sensitive),
- Followed by **exactly 4 digits**,
- Followed by a hyphen `-`,
- Followed by **exactly 4 more digits`.

The serial number can appear **anywhere** in the description, not just the beginning.

Return the result ordered by `product_id` in ascending order.

---

## 🗃️ Table Schema

### products Table

| Column Name  | Type    |
|--------------|---------|
| product_id   | int     |
| product_name | varchar |
| description  | varchar |

- `product_id` is the primary key for this table.
- Each row contains a product's details including its description.

---

## 🧪 Example

### Input

**products**

| product_id | product_name | description                                          |
|------------|--------------|------------------------------------------------------|
| 1          | Widget A     | This is a sample product with SN1234-5678            |
| 2          | Widget B     | A product with serial SN9876-1234 in the description |
| 3          | Widget C     | Product SN1234-56789 is available now                |
| 4          | Widget D     | No serial number here                                |
| 5          | Widget E     | Check out SN4321-8765 in this description            |

### Output

| product_id | product_name | description                                          |
|------------|--------------|------------------------------------------------------|
| 1          | Widget A     | This is a sample product with SN1234-5678            |
| 2          | Widget B     | A product with serial SN9876-1234 in the description |
| 5          | Widget E     | Check out SN4321-8765 in this description            |

---

## 🧠 Explanation

Only products 1, 2, and 5 contain valid serial numbers in the format `SNdddd-dddd`:
- Product 3 has **5 digits after the hyphen**, which is invalid.
- Product 4 has **no serial number**.

---
