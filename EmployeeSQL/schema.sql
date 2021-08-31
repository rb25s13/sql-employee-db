DROP TABLE IF EXISTS departments cascade;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees cascade;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;


CREATE TABLE departments (
  dept_no varchar(4) primary key,
  dept_name varchar(18)
);

CREATE TABLE titles (
  title_id varchar(5) primary key,
  title varchar(20)
);

CREATE TABLE employees (
  emp_no serial primary key not null,
  emp_title_id varchar(5),
  birth_date varchar(10),
  first_name varchar(20),
  last_name varchar(20),
  sex char(1),
  hire_date varchar(10),
  foreign key (emp_title_id) references titles(title_id)
);

CREATE TABLE dept_emp (
  emp_no serial,
  dept_no varchar(4)
);

CREATE TABLE dept_manager (
  dept_no varchar(4),
  emp_no serial primary key not null,
  foreign key (dept_no) references departments(dept_no),
  foreign key (emp_no) references employees(emp_no)
);

CREATE TABLE salaries (
  emp_no serial primary key not null,
  salary integer,
  foreign key (emp_no) references employees(emp_no)
);

