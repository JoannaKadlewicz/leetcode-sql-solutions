WITH CTE AS (
    SELECT account, SUM(amount) AS balance
    FROM Transactions
    GROUP BY account
)
SELECT name, balance
FROM Users
         JOIN CTE
              USING (account)
WHERE balance > 10000