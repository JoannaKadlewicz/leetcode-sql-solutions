SELECT player_id, first_login
FROM (
         SELECT
             player_id,
             event_date as first_login,
             RANK() OVER (PARTITION BY player_id ORDER BY event_date ASC) as rank
         FROM Activity
         )
WHERE rank = 1 



