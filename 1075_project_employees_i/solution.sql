SELECT project_id,
       ROUND (AVG(experience_years), 2) as average_years
FROM(
        SELECT *
        FROM Project p
                 JOIN Employee e
                      ON p.employee_id = e.employee_id
        ORDER BY project_id)
GROUP BY project_id 