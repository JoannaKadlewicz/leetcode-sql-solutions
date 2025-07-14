SELECT MAX (num) as num
FROM (
         SELECT COUNT (num) as count, num
         FROM MyNumbers
         GROUP BY num
         HAVING COUNT (num) = 1)