# LeetCode SQL Problem 596 - Classes With at Least 5 Students

## 📘 Problem Description

Given a table that lists students and their classes, write a SQL query to find all the classes that have **at least five students**.

Return the class names in any order.

---

## 🗃️ Table Schema

### Courses Table

| Column Name | Type    |
|-------------|---------|
| student     | varchar |
| class       | varchar |

- `(student, class)` is the primary key.
- Each row indicates which student is enrolled in which class.

---

## 🧪 Example

### Input

| student | class    |
|---------|----------|
| A       | Math     |
| B       | English  |
| C       | Math     |
| D       | Biology  |
| E       | Math     |
| F       | Computer |
| G       | Math     |
| H       | Math     |
| I       | Math     |

### Output

| class   |
|---------|
| Math    |

---

## 🔍 Explanation

- The class "Math" has 6 students, which is more than or equal to 5, so it is included.
- Other classes have fewer than 5 students and are not included.

---