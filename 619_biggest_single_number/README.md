# LeetCode SQL Problem 619 - Biggest Single Number

## 📘 Problem Description

Given a table `MyNumbers` containing integers (possibly with duplicates), find the largest number that appears **only once** in the table.

- If there are no single numbers (numbers that appear exactly once), return `null`.

---

## 🗃️ Table Schema

### MyNumbers Table

| Column Name | Type |
|-------------|------|
| num         | int  |

- The table may contain duplicates; no primary key is defined.

---

## 🧪 Example

### Input

| num |
|-----|
| 8   |
| 8   |
| 3   |
| 3   |
| 1   |
| 4   |
| 5   |
| 6   |

### Output

| num |
|-----|
| 6   |

---

### Explanation

- The numbers that appear exactly once are: 1, 4, 5, 6.
- The largest of these is 6, so we return 6.

---

## 🧪 Example 2

### Input

| num |
|-----|
| 8   |
| 8   |
| 7   |
| 7   |
| 3   |
| 3   |
| 3   |

### Output

| num  |
|------|
| null |

---

### Explanation

- There are no numbers that appear exactly once.
- So, the result is `null`.

---

## 🛠️ Solution Outline

- Group the numbers by `num` and count their occurrences.
- Filter to keep only those with a count of 1 (single numbers).
- Return the maximum `num` among those.
- If none exist, return `null`.