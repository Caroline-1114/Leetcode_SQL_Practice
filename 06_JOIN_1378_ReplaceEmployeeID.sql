select EmployeeUNI.unique_id as unique_id , Employees.name as name 
from employees left join EmployeeUNI 
on employees.id = EmployeeUNI.id;
