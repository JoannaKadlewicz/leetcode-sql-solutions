WITH CTE AS
         (
             SELECT stock_name, operation,
                    CASE WHEN operation = 'Buy' THEN SUM(price)
                         WHEN operation = 'Sell' THEN SUM(price)
                        END as sum_operation
             FROM Stocks
             GROUP BY stock_name, operation
         )
SELECT
    stock_name,
    SUM(CASE WHEN operation = 'Sell' THEN sum_operation ELSE 0 END) -
    SUM(CASE WHEN operation = 'Buy' THEN sum_operation ELSE 0 END) AS capital_gain_loss
FROM CTE
GROUP BY stock_name