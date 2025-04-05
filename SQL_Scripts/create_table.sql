CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INT CHECK (Age >= 18),
    Salary DECIMAL(10, 2),
    DepartmentID INT,
    JoinDate DATE,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

CREATE TABLE Payroll (
    PayrollID INT PRIMARY KEY,
    EmployeeID INT,
    SalaryMonth VARCHAR(20) NOT NULL,
    SalaryAmount DECIMAL(10, 2),
    Bonus DECIMAL(10, 2) DEFAULT 0,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

