WITH GROUPED_SALES as (
    SELECT *, (p.price * us.units) as sales_price
    FROM Prices AS p
             LEFT JOIN
         UnitsSold AS us
         USING (product_id)
    WHERE us.purchase_date BETWEEN p.start_date AND p.end_date
       OR us.purchase_date IS NULL
)

SELECT product_id, COALESCE(ROUND(SUM(sales_price) / ROUND(SUM(units), 2), 2), 0) AS average_price
FROM GROUPED_SALES
GROUP BY product_id
