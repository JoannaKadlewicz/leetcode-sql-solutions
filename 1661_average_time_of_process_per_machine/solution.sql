SELECT machine_id,
       ROUND(CAST(SUM(CASE WHEN activity_type = 'end' THEN timestamp
                      WHEN activity_type = 'start' THEN -timestamp
                      ELSE 0 END)
           / (COUNT(DISTINCT process_id)) AS DECIMAL),3) AS processing_time
FROM Activity
GROUP BY machine_id
