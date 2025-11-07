With temp_table as(
    Select Employee.name as Employee, Department.name as Department, Employee.salary as Salary
    DENSE_RANK() over (partition by departmentId order by salary DESC) as rank_id,
    from Employee 
    left join Department on Department.id = Employee.departmentId 
)
select Employee, Department, Salary  
from temp_table 
where rank_id <= 3