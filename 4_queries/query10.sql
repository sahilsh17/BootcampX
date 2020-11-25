SELECT assignments.id, assignments.day, assignments.name, assignments.chapter, 
COUNT(*) as total_requests from assistance_requests 
INNER JOIN assignments on assignments.id = assignment_id 
GROUP BY assignments.id ORDER BY total_requests DESC;