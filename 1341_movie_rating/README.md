# LeetCode SQL Problem 1341 - Movie Rating

## 📘 Problem Description

Given three tables `Movies`, `Users`, and `MovieRating`, find the following:

1. The name of the user who has rated the greatest number of movies.
    - If there is a tie, return the lexicographically smallest user name.
2. The movie name with the highest average rating **in February 2020**.
    - If there is a tie, return the lexicographically smallest movie name.

Return both results as separate rows in a single column named `results`.

---

## 🗃️ Table Schemas

### Movies Table

| Column Name | Type    |
|-------------|---------|
| movie_id    | int     |
| title       | varchar |

- `movie_id` is the primary key.

### Users Table

| Column Name | Type    |
|-------------|---------|
| user_id     | int     |
| name        | varchar |

- `user_id` is the primary key.
- `name` is unique.

### MovieRating Table

| Column Name | Type    |
|-------------|---------|
| movie_id    | int     |
| user_id     | int     |
| rating      | int     |
| created_at  | date    |

- `(movie_id, user_id)` is the primary key.
- Contains the rating of a movie by a user and the review date.

---

## 🧪 Example

### Input

Movies table:

| movie_id | title     |
|----------|-----------|
| 1        | Avengers  |
| 2        | Frozen 2  |
| 3        | Joker     |

Users table:

| user_id | name   |
|---------|--------|
| 1       | Daniel |
| 2       | Monica |
| 3       | Maria  |
| 4       | James  |

MovieRating table:

| movie_id | user_id | rating | created_at  |
|----------|---------|--------|-------------|
| 1        | 1       | 3      | 2020-01-12  |
| 1        | 2       | 4      | 2020-02-11  |
| 1        | 3       | 2      | 2020-02-12  |
| 1        | 4       | 1      | 2020-01-01  |
| 2        | 1       | 5      | 2020-02-17  |
| 2        | 2       | 2      | 2020-02-01  |
| 2        | 3       | 2      | 2020-03-01  |
| 3        | 1       | 3      | 2020-02-22  |
| 3        | 2       | 4      | 2020-02-25  |

### Output

| results   |
|-----------|
| Daniel    |
| Frozen 2  |

---

## 🧠 Explanation

- **User who rated the most movies:**  
  Daniel and Monica both rated 3 movies, but Daniel comes first lexicographically.
- **Movie with highest average rating in February 2020:**  
  Frozen 2 and Joker both have an average rating of 3.5 in February, but Frozen 2 is lexicographically smaller.
