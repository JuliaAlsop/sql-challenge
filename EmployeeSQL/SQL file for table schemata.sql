-- SQL HW code for table schema

CREATE TABLE "Employees" (
    "emp_no" int   NOT NULL,
    "emp_title" varchar(100)   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar(100)   NOT NULL,
    "last_name" varchar(100)   NOT NULL,
    "sex" varchar(1)   NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Department_Employees" (
    "emp_no" int   NOT NULL,
    "dept_no" varchar(100)   NOT NULL
);

CREATE TABLE "Department_Manager" (
    "dept_no" varchar(20)   NOT NULL,
    "emplo_no" int   NOT NULL
    
);

CREATE TABLE "Departments" (
    "dept_no" varchar(100)   NOT NULL,
    "dept_name" varchar(100)   NOT NULL
);

CREATE TABLE "Salaries" (
    "emplo_no" int   NOT NULL,
    "salary" int   NOT NULL
);

CREATE TABLE "Title" (
    "title_id" varchar(100)   NOT NULL,
    "title" varchar(100)   NOT NULL
);

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Salaries" ("emplo_no");

ALTER TABLE "Department_Employees" ADD CONSTRAINT "fk_Department_Employees_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Department_Manager" ("emplo_no");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_emplo_no" FOREIGN KEY("emplo_no")
REFERENCES "Department_Employees" ("emp_no");
