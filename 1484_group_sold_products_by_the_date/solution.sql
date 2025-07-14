SELECT sell_date, COUNT(DISTINCT product) as num_sold,
       ARRAY_TO_STRING(ARRAY_AGG (DISTINCT product), ',') AS products
FROM Activities
GROUP BY sell_date;
