﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "departments" (
    "dept_no" varchar(6)   NOT NULL,
    "dept_name" varchar(25)   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "dept_emp" (
    id serial primary key,
    "emp_no" bigint   NULL,
    "dept_no" varchar(6)   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL
    
);

CREATE TABLE "employees" (
    "emp_no" bigint   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar(20)   NOT NULL,
    "lastname" varchar(25)   NOT NULL,
    "gender" varchar(2)   NOT NULL,
    "hire_date" date   NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "dept_manager" (
    id serial primary key,
    "dept_no" varchar(6)   NOT NULL,
    "emp_no" bigint   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL
    
);

CREATE TABLE "titles" (
    id serial primary key,
    "emp_no" bigint   NULL,
    "title" varchar(20)   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL
    
);

CREATE TABLE "salaries" (
    id serial primary key,
    "emp_no" bigint   NULL,
    "salary" money   NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL
   
);

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "titles" ADD CONSTRAINT "fk_titles_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

