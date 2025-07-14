SELECT
    event_day as day,
    emp_id,
    SUM (short_time) as total_time
FROM
    (
        SELECT event_day, emp_id, (out_time - in_time) AS short_time
        FROM Employees
    )
GROUP BY event_day, emp_id
