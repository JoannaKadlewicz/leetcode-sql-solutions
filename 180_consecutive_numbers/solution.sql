SELECT
    DISTINCT num AS ConsecutiveNums
FROM(
    SELECT
        num,
        LEAD(num) OVER () AS next_value,
        LEAD(next_value) OVER() as second_next_value
    FROM (
        SELECT num, LEAD(num) OVER () AS next_value
        FROM Logs
      )
    )
WHERE num = next_value AND next_value = second_next_value