SELECT cohorts.name as cohort, COUNT(*) as total_submissions 
FROM assignment_submissions 
INNER JOIN students on assignment_submissions.student_id = students.id 
INNER JOIN cohorts on students.cohort_id = cohorts.id 
GROUP BY cohort 
ORDER BY total_submissions DESC;