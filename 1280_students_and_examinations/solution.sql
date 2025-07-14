WITH ATTENDED_EXAMS AS (SELECT
                            e.student_id, e.subject_name, COUNT(*) as attended_exams
                        FROM Examinations e
                        GROUP BY e.student_id, e.subject_name)

SELECT
    s.student_id,
    s.student_name,
    sub.subject_name,
    COALESCE(e.attended_exams, 0) AS attended_exams
FROM
    Students s
        CROSS JOIN
    Subjects sub
        LEFT JOIN ATTENDED_EXAMS e ON s.student_id = e.student_id AND sub.subject_name = e.subject_name
ORDER BY s.student_id, s.student_name, sub.subject_name;