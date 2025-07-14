SELECT Department, Employee, Salary
FROM (
         SELECT d.name AS Department, e.name AS Employee, salary AS Salary,
                DENSE_RANK () OVER (PARTITION BY d.name ORDER BY salary DESC) as rank
         FROM Employee e
                  JOIN Department d
                       ON e.departmentId = d.id)
WHERE rank < 4