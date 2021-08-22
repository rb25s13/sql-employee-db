DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;


CREATE TABLE departments (
  dept_no character varying(5) NOT NULL,
  dept_name character varying(30) NOT NULL
);

CREATE TABLE dept_emp (
  dept_no character varying(10) NOT NULL,
  emp_no character varying(30) NOT NULL
);

CREATE TABLE dept_manager (
  dept_no character varying(10) NOT NULL,
  emp_no character varying(30) NOT NULL	
);

CREATE TABLE employees (
  emp_no integer NOT NULL,
  emp_title_id character varying(6) NOT NULL,
  birth_date character varying(10) NOT NULL,
  first_name character varying(20) NOT NULL,
  last_name character varying(20) NOT NULL,
  sex character varying(10) NOT NULL,
  hire_date character varying(10) NOT NULL
);

CREATE TABLE salaries (
  emp_no character varying(30) NOT NULL,
  salary integer NOT NULL
);

CREATE TABLE titles (
  title_id character varying(10) NOT NULL,
  title character varying(20) NOT NULL	
);