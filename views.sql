use information;
CREATE TABLE Employees (
    EmpID INT,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT,
    City VARCHAR(50)
);

INSERT INTO Employees VALUES
(1, 'Arun', 'HR', 50000, 'Delhi'),
(2, 'Bala', 'IT', 60000, 'Mumbai'),
(3, 'Ravi', 'IT', 70000, 'Delhi'),
(4, 'Arjun', 'Finance', 55000, 'Chennai'),
(5, 'Rahul', 'HR', 52000, 'Mumbai');

CREATE VIEW IT_Employees AS
SELECT EmpID, Name, Salary
FROM Employees
WHERE Department = 'IT';

SELECT * FROM IT_Employees;

CREATE VIEW Employee_Tax_View AS
SELECT Name, Salary, Salary * 0.12 AS Tax
FROM Employees;

select * from Employee_Tax_view;

