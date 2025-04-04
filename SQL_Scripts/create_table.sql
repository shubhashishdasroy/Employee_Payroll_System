CREATE DATABASE employee_payroll;
USE employee_payroll;

CREATE TABLE Departments (
    DepartmentID NUMBER PRIMARY KEY,
    DepartmentName VARCHAR2(50) NOT NULL
);


CREATE TABLE Employees (
    EmployeeID NUMBER PRIMARY KEY,
    Name VARCHAR2(50) NOT NULL,
    Age NUMBER,
    Salary NUMBER(10, 2),
    DepartmentID NUMBER,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

CREATE TABLE Payroll (
    PayrollID NUMBER PRIMARY KEY,
    EmployeeID NUMBER,
    SalaryMonth VARCHAR2(20),
    SalaryAmount NUMBER(10,2),
    DepartmentID NUMBER,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
