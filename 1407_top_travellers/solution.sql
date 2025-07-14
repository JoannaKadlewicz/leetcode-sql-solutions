SELECT name, coalesce(SUM(distance), 0) AS travelled_distance
FROM Users
         LEFT JOIN Rides
                   ON Rides.user_id = Users.id
Group by user_id, name
ORDER BY travelled_distance DESC, name ASC;