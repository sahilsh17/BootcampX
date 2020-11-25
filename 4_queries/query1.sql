SELECT COUNT(*) as total_assistances, 
teachers.name FROM assistance_requests 
INNER JOIN teachers on teachers.id = teacher_id 
WHERE teachers.name = 'Waylon Boehm' and 
completed_at is not null GROUP BY teachers.name;