SELECT tweet_id
FROM
    (
        SELECT tweet_id, LENGTH(content) AS number_of_letters
        FROM Tweets
    )
WHERE number_of_letters > 15