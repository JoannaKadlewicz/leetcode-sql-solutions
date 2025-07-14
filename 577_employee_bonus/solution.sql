WITH CTE AS (
    SELECT *
    FROM Employee e
             LEFT JOIN Bonus b
                       ON e.empId = b.empId)

SELECT name, bonus
FROM CTE
WHERE bonus < 1000 OR bonus IS NULL;