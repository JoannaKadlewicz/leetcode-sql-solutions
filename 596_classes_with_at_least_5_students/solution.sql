SELECT class
FROM (
         SELECT class, Count(class) as count_class
         FROM Courses
         GROUP BY class
     ) AS classes
WHERE count_class >= 5 


