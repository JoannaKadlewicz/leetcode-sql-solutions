SELECT product_id, product_name, description
FROM products
WHERE description RLIKE '(^|[^A-Za-z0-9])SN[0-9]{4}-[0-9]{4}([^0-9]|$)'
ORDER BY product_id ASC;