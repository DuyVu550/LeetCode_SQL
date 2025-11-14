with temp_table as (
     select b.name as Department, a.name as Employee, a.salary as Salary, dense_rank() over (partition by departmentId order by salary desc) as rank_salary
     from Employee a
     join Department b on a.departmentId = b.id
)
select Department, Employee, Salary
from temp_table
where rank_salary <= 3