SELECT product_name, year, price
FROM Product as p
    JOIN Sales as s
    USING (product_id)
