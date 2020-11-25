SELECT cohorts.name as cohort, 
AVG(completed_at-started_at) as avg_assistance_requests_duration 
from assistance_requests 
INNER JOIN students on students.id = student_id 
INNER JOIN cohorts on cohorts.id = cohort_id 
GROUP BY cohorts.name 
ORDER BY avg_assistance_requests_duration;