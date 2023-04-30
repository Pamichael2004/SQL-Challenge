-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/fqFWCA
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Departments" (
    "dept_no" VARCHAR (5)  NOT NULL,
    "dept_name" VARCHAR(20)   NOT NULL,
    FOREIGN KEY (dept_name) REFERENCES departments (dept_name),
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "Department_Employee" (
    "employee_no" INT   NOT NULL,
    "dept_no" VARCHAR (5)  NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    CONSTRAINT "pk_Department_Employee" PRIMARY KEY (
        "employee_no"
     )
);

CREATE TABLE "Department_Manager" (
    "dept_no" VARCHAR (5)   NOT NULL,
    "emp_no" INT   NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    CONSTRAINT "pk_Department_Manager" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "Employees" (
    "emp_no" INT   NOT NULL,
    "emp_title" VARCHAR (5)   NOT NULL,
    "birth_date" Date   NOT NULL,
    "first_name" VARCHAR(20)   NOT NULL,
    "last_name" VARCHAR(20)   NOT NULL,
    "sex" VARCHAR(1)   NOT NULL,
    "hire_date" Date   NOT NULL,
    FOREIGN KEY (emp_title) REFERENCES titles (title_id),
    FOREIGN KEY (birth_date) REFERENCES employees (birth_date),
    FOREIGN KEY (first_name) REFERENCES employees (first_name),
    FOREIGN KEY (last_name) REFERENCES employees (last_name),
    FOREIGN KEY (sex) REFERENCES employees (sex),
    FOREIGN KEY (hire_date) REFERENCES employees (hire_date),
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Salaries" (
    "emp_no" INT   NOT NULL,
    "salaries" INT   NOT NULL,
    FOREIGN KEY (salaries) REFERENCES employees (salaries),
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Titles" (
    "title_id" INT   NOT NULL,
    "title" VARCHAR(20)   NOT NULL,
    FOREIGN KEY (title) REFERENCES titles (title),
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "title_id"
     )
);

