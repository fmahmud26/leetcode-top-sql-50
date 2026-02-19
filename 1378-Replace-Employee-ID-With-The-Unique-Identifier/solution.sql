-- PostgreSQL

SELECT unique_id, name
FROM Employees emp
         LEFT JOIN EmployeeUNI id
                   ON emp.id = id.id;