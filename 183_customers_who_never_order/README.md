# LeetCode SQL Problem 183 - Customers Who Never Order

## 📘 Problem Description

Given the `Customers` and `Orders` tables, write a SQL query to **find all customers who never order anything**.  
Return the result table in **any order**.

---

## 🗃️ Table Schemas

### Customers Table

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |

- `id` is the primary key (contains unique values).
- Each row represents a customer.

### Orders Table

| Column Name | Type |
|-------------|------|
| id          | int  |
| customerId  | int  |

- `id` is the primary key (contains unique values).
- `customerId` is a foreign key referencing `Customers.id`.
- Each row represents an order placed by a customer.

---

## 🧪 Example

### Input

**Customers Table**

| id | name  |
|----|-------|
| 1  | Joe   |
| 2  | Henry |
| 3  | Sam   |
| 4  | Max   |

**Orders Table**

| id | customerId |
|----|------------|
| 1  | 3          |
| 2  | 1          |

### Output

| Customers |
|-----------|
| Henry     |
| Max       |

---

### Explanation

- Joe and Sam have placed orders.
- Henry and Max have **not** placed any orders and should be included in the result.
