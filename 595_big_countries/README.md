# LeetCode SQL Problem 595 - Big Countries

## 📘 Problem Description

Write a SQL query to find all countries that are considered **big**.

A country is **big** if it satisfies at least one of these conditions:
- It has an area of **at least 3,000,000** km², or
- It has a population of **at least 25,000,000** people.

Return the **name**, **population**, and **area** of such countries.

---

## 🗃️ Table Schema

### World Table

| Column Name | Type    |
|-------------|---------|
| name        | varchar |
| continent   | varchar |
| area        | int     |
| population  | int     |
| gdp         | bigint  |

- `name` is the primary key.
- Each row provides information about a country.

---

## 🧪 Example

### Input

| name        | continent | area    | population | gdp          |
|-------------|-----------|---------|------------|--------------|
| Afghanistan | Asia      | 652230  | 25500100   | 20343000000  |
| Albania     | Europe    | 28748   | 2831741    | 12960000000  |
| Algeria     | Africa    | 2381741 | 37100000   | 188681000000 |
| Andorra     | Europe    | 468     | 78115      | 3712000000   |
| Angola      | Africa    | 1246700 | 20609294   | 100990000000 |

### Output

| name        | population | area    |
|-------------|------------|---------|
| Afghanistan | 25500100   | 652230  |
| Algeria     | 37100000   | 2381741 |

---

## 🔍 Explanation

- Afghanistan’s population is above 25 million, so it is big.
- Algeria’s population is above 25 million, so it is big.
- No country meets the area condition of 3 million, but population qualifies Afghanistan and Algeria.

---