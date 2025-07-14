# LeetCode SQL Problem 1280 - Students and Examinations

## 📘 Problem Description

Given three tables `Students`, `Subjects`, and `Examinations`, find the number of times each student attended each exam.

- Each student attends exams for every subject.
- The `Examinations` table may have duplicate rows indicating multiple attendances.
- Report the count of times each student attended each subject's exam.
- Include all combinations of students and subjects, even if a student attended zero times.

Return the results ordered by `student_id` and `subject_name`.

---

## 🗃️ Table Schemas

### Students Table

| Column Name  | Type    |
|--------------|---------|
| student_id   | int     |
| student_name | varchar |

- `student_id` is the primary key.

### Subjects Table

| Column Name  | Type    |
|--------------|---------|
| subject_name | varchar |

- `subject_name` is the primary key.

### Examinations Table

| Column Name  | Type    |
|--------------|---------|
| student_id   | int     |
| subject_name | varchar |

- May contain duplicate rows.
- Indicates attendance of a student to a subject exam.

---

## 🧪 Example

### Input

Students table:

| student_id | student_name |
|------------|--------------|
| 1          | Alice        |
| 2          | Bob          |
| 13         | John         |
| 6          | Alex         |

Subjects table:

| subject_name |
|--------------|
| Math         |
| Physics      |
| Programming  |

Examinations table:

| student_id | subject_name |
|------------|--------------|
| 1          | Math         |
| 1          | Physics      |
| 1          | Programming  |
| 2          | Programming  |
| 1          | Physics      |
| 1          | Math         |
| 13         | Math         |
| 13         | Programming  |
| 13         | Physics      |
| 2          | Math         |
| 1          | Math         |

### Output

| student_id | student_name | subject_name | attended_exams |
|------------|--------------|--------------|----------------|
| 1          | Alice        | Math         | 3              |
| 1          | Alice        | Physics      | 2              |
| 1          | Alice        | Programming  | 1              |
| 2          | Bob          | Math         | 1              |
| 2          | Bob          | Physics      | 0              |
| 2          | Bob          | Programming  | 1              |
| 6          | Alex         | Math         | 0              |
| 6          | Alex         | Physics      | 0              |
| 6          | Alex         | Programming  | 0              |
| 13         | John         | Math         | 1              |
| 13         | John         | Physics      | 1              |
| 13         | John         | Programming  | 1              |

---

## 🧠 Explanation

- All combinations of students and subjects are included.
- The `attended_exams` column counts the number of times a student attended a subject exam.
- For example, Alice attended the Math exam 3 times, Physics 2 times, and Programming 1 time.
- Bob did not attend the Physics exam at all.
- Alex did not attend any exams.
- John attended each exam once.
