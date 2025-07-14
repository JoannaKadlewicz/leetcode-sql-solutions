WITH CTE AS (SELECT *
             FROM Orders
             WHERE order_date BETWEEN '2020-02-01' AND '2020-02-29')

SELECT product_name, SUM(unit) AS unit
FROM Products
         JOIN CTE
              USING (product_id)
GROUP BY product_name
HAVING SUM(unit) >= 100