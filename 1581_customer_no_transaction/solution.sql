SELECT customer_id, COUNT(customer_id) AS count_no_trans
FROM Visits
WHERE visit_id NOT IN (SELECT visit_id from Transactions)
GROUP BY (customer_id)
ORDER BY count_no_trans ASC