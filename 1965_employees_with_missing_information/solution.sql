SELECT coalesce(s.employee_id, e.employee_id) AS employee_id
FROM Salaries s
         FULL JOIN Employees e ON s.employee_id = e.employee_id
WHERE s.salary IS null
   OR e.name IS null;
