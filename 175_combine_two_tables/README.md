# LeetCode SQL Problem 175 - Combine Two Tables

## 📘 Problem Description

Given two SQL tables, `Person` and `Address`, write a query to report the `firstName`, `lastName`, `city`, and `state` of each person.  
If a person does **not** have a corresponding address, the query should return `NULL` for `city` and `state`.

---

## 🗃️ Table Schemas

### Person Table

| Column Name | Type    | Description     |
|-------------|---------|-----------------|
| personId    | int     | Primary key     |
| lastName    | varchar | Person's surname|
| firstName   | varchar | Person's name   |

### Address Table

| Column Name | Type    | Description                 |
|-------------|---------|-----------------------------|
| addressId   | int     | Primary key                 |
| personId    | int     | Foreign key to `Person`     |
| city        | varchar | City name                   |
| state       | varchar | State name                  |

---

## 🧪 Example

### Input

**Person Table**

| personId | lastName | firstName |
|----------|----------|-----------|
| 1        | Wang     | Allen     |
| 2        | Alice    | Bob       |

**Address Table**

| addressId | personId | city          | state      |
|-----------|----------|---------------|------------|
| 1         | 2        | New York City | New York   |
| 2         | 3        | Leetcode      | California |

### Output

| firstName | lastName | city          | state    |
|-----------|----------|---------------|----------|
| Allen     | Wang     | NULL          | NULL     |
| Bob       | Alice    | New York City | New York |

### Explanation

- Allen Wang (`personId = 1`) has no matching address, so `city` and `state` are `NULL`.
- Bob Alice (`personId = 2`) has a matching address, so the fields are populated.
- The address for `personId = 3` is ignored because there's no matching entry in `Person`.

---

## 💾 Solution

See [`solution.sql`](solution.sql) for the SQL query with inline comments.

---
