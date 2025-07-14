SELECT *
FROM Cinema
WHERE description != 'boring'
AND MOD(id,2) <> 0
Order by rating DESC;