WITH unique_purchase AS (
    select c.customer_id, c.product_key
    FROM Customer c
    GROUP BY c.customer_id, c.product_key
)

SELECT customer_id
FROM unique_purchase
GROUP BY customer_id
HAVING COUNT(customer_id) =
       (
           select count(distinct product_key) as count_prod
           from Product
       )
ORDER By customer_id



