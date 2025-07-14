WITH CTE AS
         (
             SELECT DISTINCT e1.employee_id, e2.reports_to,
                             case when e2.reports_to=e1.employee_id THEN e1.name END as name
             FROM Employees as e1
                      JOIN Employees as e2
                           ON e2.reports_to=e1.employee_id
         ),
     CTE2 AS
         (
             SELECT reports_to,
                    COUNT(reports_to) AS reports_count,
                    ROUND(AVG(age), 0) as average_age
             FROM Employees
             where reports_to IS NOT NULL
             GROUP BY reports_to
         )

SELECT employee_id, name, reports_count, average_age
FROM CTE
         JOIN CTE2
              USING (reports_to)
ORDER BY employee_id


