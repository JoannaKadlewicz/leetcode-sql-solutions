WITH rank as (
    SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary,
           DENSE_RANK() OVER (PARTITION BY d.name ORDER BY salary desc) as rank
    FROM Department AS d
             JOIN Employee AS e
                  ON d.id = e.departmentId)