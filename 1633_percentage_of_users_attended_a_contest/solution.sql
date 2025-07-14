SELECT
    contest_id,
    ROUND (100.00 * COUNT(contest_id) /
           (SELECT DISTINCT COUNT(user_id) FROM Users),2) as percentage
FROM Register r
GROUP BY contest_id
ORDER BY percentage DESC, contest_id ;

