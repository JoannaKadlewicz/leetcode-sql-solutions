WITH first_play AS
         (
             SELECT
                 player_id,
                 MIN(event_date) AS first_login
             FROM Activity
             GROUP BY player_id
         )

SELECT
    ROUND(COUNT(DISTINCT a.player_id) / (SELECT COUNT(DISTINCT b.player_id) FROM Activity as b), 2) as fraction
FROM Activity as a
         JOIN first_play
              USING (player_id)
WHERE DATEDIFF (a.event_date, first_play.first_login) = 1