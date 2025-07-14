WITH CTE AS (SELECT movie_id, name, rating
              FROM MovieRating as mr
                   JOIN Users as u
                        USING (user_id)),

     MostActiveUser AS (SELECT name AS results
                        FROM CTE
                        GROUP BY name
                        ORDER BY COUNT(*) DESC, name ASC LIMIT 1
    ),

    TopRatedMovieFeb2020 AS
         (
            SELECT title AS results
            FROM MovieRating as mr2
                JOIN Movies as m
                USING (movie_id)
            WHERE created_at BETWEEN '2020-02-01' AND '2020-02-29'
            GROUP BY title
            ORDER BY AVG (rating) DESC, title ASC
                LIMIT 1
         )
SELECT results
FROM MostActiveUser
UNION ALL
SELECT results
FROM TopRatedMovieFeb2020
