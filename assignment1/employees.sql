-- Run this in MySQL / MariaDB (e.g. phpMyAdmin or the mysql command line)
CREATE DATABASE IF NOT EXISTS transtion;
USE transtion;

DROP TABLE IF EXISTS Employees;
CREATE TABLE Employees (
  employee_id   INT PRIMARY KEY,
  employee_name VARCHAR(100) NOT NULL,
  department    VARCHAR(100) NOT NULL,
  basic_salary  DECIMAL(12,2) NOT NULL
);

INSERT INTO Employees (employee_id, employee_name, department, basic_salary) VALUES
(1, 'John Prince',   'Finance',         500000),
(2, 'Marie Ishinwe', 'Human Resources', 600000),
(3, 'David Kofi',    'IT',              750000);
