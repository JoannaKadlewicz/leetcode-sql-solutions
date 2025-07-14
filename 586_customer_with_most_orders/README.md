# LeetCode SQL Problem 586 - Customer Placing the Largest Number of Orders

## 📘 Problem Description

Write a SQL query to **find the `customer_number` of the customer who has placed the most orders**.

You can assume that the test data guarantees that **exactly one customer** will have the highest number of orders.

---

## 🗃️ Table Schema

### Orders Table

| Column Name     | Type |
|------------------|------|
| order_number     | int  |
| customer_number  | int  |

- `order_number` is the **primary key**.
- Each row represents an order placed by a customer.

---

## 🛠️ Requirements

- Return the `customer_number` of the customer with the **most orders**.
- If multiple customers tie (in a follow-up scenario), return **all such customers**.

---

## 🧪 Example

### Input

**Orders Table**

| order_number | customer_number |
|--------------|-----------------|
| 1            | 1               |
| 2            | 2               |
| 3            | 3               |
| 4            | 3               |

### Output

| customer_number |
|-----------------|
| 3               |

---

### Explanation

- Customer 3 placed **2 orders**.
- Customers 1 and 2 placed only **1 order** each.
- Therefore, customer 3 is returned as the one who placed the most orders.

---