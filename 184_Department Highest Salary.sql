# Write your MySQL query statement below




select q.Name Department, p.Salary Salary,  p.Name Employee from Department q, (select l.name, l.DepartmentId, l.Salary from Employee l, (select departmentid, max(salary) salary2 from employee group by departmentid) m where l.salary=m.salary2 and m.departmentid=l.departmentid) p where p.departmentid=q.id
