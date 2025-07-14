CREATE OR REPLACE FUNCTION NthHighestSalary(N INT) RETURNS TABLE (Salary INT) AS $$

DECLARE
count INT;
BEGIN

IF N <= 0 THEN
    Salary = NULL;
    RETURN;
END IF;

SELECT COUNT(distinct e.salary) INTO count from Employee e;

IF count < N THEN
    Salary = NULL;
    RETURN NEXT;
ELSE
    RETURN QUERY (
    SELECT DISTINCT e.salary from Employee e ORDER BY salary DESC LIMIT 1 OFFSET (N - 1)
  );
END IF;
  RETURN;
END;
$$ LANGUAGE plpgsql;