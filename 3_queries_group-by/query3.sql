SELECT cohorts.name as cohort_name, 
COUNT(*) as student_count from students 
INNER JOIN cohorts on students.cohort_id = cohorts.id 
GROUP BY cohort_name 
HAVING COUNT(*) >=18 
ORDER BY student_count;