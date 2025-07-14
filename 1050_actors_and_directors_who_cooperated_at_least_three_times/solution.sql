SELECT actor_id, director_id
FROM (
         SELECT actor_id, director_id,
                ROW_NUMBER () OVER (PARTITION BY actor_id,director_id ) AS rank
         FROM ActorDirector)
WHERE rank = 3