SELECT students.name, 
COUNT(*) as total_assistance_requests 
from assistance_requests 
INNER JOIN students on students.id = student_id 
WHERE students.name = 'Elliot Dickinson' 
GROUP BY students.name;