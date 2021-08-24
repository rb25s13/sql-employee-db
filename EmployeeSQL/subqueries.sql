drop table if exists dept_man;
drop table if exists emp_dept;
drop table if exists emp_dept_name;

-- List the following details of each employee: employee number, last name, first name, sex, and salary.
select employees.emp_no, last_name, first_name, sex, salary from employees 
inner join salaries on employees.emp_no = salaries.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date from employees
where hire_date like '%1986';

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
create table dept_man as (
select employees.emp_no, last_name, first_name, dept_no from employees 
inner join dept_manager on employees.emp_no = dept_manager.emp_no);

select dept_man.emp_no, last_name, first_name, dept_man.dept_no, dept_name from dept_man 
inner join departments on dept_man.dept_no = departments.dept_no;

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
create table emp_dept as (
select employees.emp_no, last_name, first_name, dept_no from employees
inner join dept_emp on employees.emp_no = dept_emp.emp_no);

create table emp_dept_name as (
select emp_dept.emp_no, last_name, first_name, dept_name from emp_dept
inner join departments on emp_dept.dept_no = departments.dept_no);

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex from employees
where first_name = 'Hercules' and last_name like 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
select emp_no, last_name, first_name, dept_name from emp_dept_name
where dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select emp_no, last_name, first_name, dept_name from emp_dept_name
where dept_name = 'Sales' or dept_name = 'Development';

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(last_name) as "last_name count"
from employees
group by last_name
order by "last_name count" desc;