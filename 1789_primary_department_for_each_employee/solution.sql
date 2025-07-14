WITH CTE AS
         (
             SELECT employee_id,
                    COUNT( employee_id)
             FROM Employee
             GROUP BY employee_id
             ORDER BY employee_id
         )

SELECT *
FROM

    (
        SELECT employee_id,
               CASE WHEN count = 1 THEN department_id
                    WHEN count > 1 AND primary_flag = 'Y' THEN department_id
                   END AS department_id
        FROM Employee as e
                 JOIN CTE as c
                      USING (employee_id)
    )

WHERE department_id IS NOT NULL