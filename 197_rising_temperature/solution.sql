WITH CTE AS (
    SELECT id,
           temperature,
           recordDate,
           LAG(temperature, 1) OVER (Order by recordDate ASC) AS previous_temp,
        LAG(recordDate, 1) OVER (Order by recordDate ASC) AS previous_date
    FROM Weather)

SELECT id
From CTE
WHERE temperature > previous_temp AND recordDate - previous_date = 1;