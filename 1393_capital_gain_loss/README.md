# LeetCode SQL Problem 1393 - Capital Gain/Loss

## 📘 Problem Description

Given a table `Stocks` that records stock buy/sell operations, calculate the **capital gain or loss** for each stock.

- The capital gain/loss is calculated as the **total difference** between the selling price and the corresponding buying price for each stock.
- It is guaranteed:
  - Every `Buy` has a corresponding `Sell` after it.
  - Every `Sell` has a corresponding `Buy` before it.

Return the result in any order.

---

## 🗃️ Table Schema

### Stocks Table

| Column Name   | Type    |
|---------------|---------|
| stock_name    | varchar |
| operation     | enum    |
| operation_day | int     |
| price         | int     |

- `(stock_name, operation_day)` is the primary key.
- `operation` is either `'Buy'` or `'Sell'`.
- Each row represents a stock operation with price and date.

---

## 🧪 Example

### Input

| stock_name   | operation | operation_day | price |
|--------------|-----------|----------------|-------|
| Leetcode     | Buy       | 1              | 1000  |
| Corona Masks | Buy       | 2              | 10    |
| Leetcode     | Sell      | 5              | 9000  |
| Handbags     | Buy       | 17             | 30000 |
| Corona Masks | Sell      | 3              | 1010  |
| Corona Masks | Buy       | 4              | 1000  |
| Corona Masks | Sell      | 5              | 500   |
| Corona Masks | Buy       | 6              | 1000  |
| Handbags     | Sell      | 29             | 7000  |
| Corona Masks | Sell      | 10             | 10000 |

### Output

| stock_name   | capital_gain_loss |
|--------------|-------------------|
| Corona Masks | 9500              |
| Leetcode     | 8000              |
| Handbags     | -23000            |

---

## 🧠 Explanation

- For **Leetcode**:
  - Buy @ 1000 on day 1, Sell @ 9000 on day 5 → Gain = `9000 - 1000 = 8000`
- For **Handbags**:
  - Buy @ 30000 on day 17, Sell @ 7000 on day 29 → Loss = `7000 - 30000 = -23000`
- For **Corona Masks**:
  - Buy @ 10 (day 2), Sell @ 1010 (day 3) → Gain = 1000
  - Buy @ 1000 (day 4), Sell @ 500 (day 5) → Loss = -500
  - Buy @ 1000 (day 6), Sell @ 10000 (day 10) → Gain = 9000
  - Total = `1000 - 500 + 9000 = 9500`
