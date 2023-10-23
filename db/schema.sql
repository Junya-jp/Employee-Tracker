DROP DATABASE IF EXISTS company_db;
CREATE DATABASE company_db;

USE company_db;
--Table for departments--
CREATE TABLE departments (
    id INT PRIMARY KEY,
    department_name VARCHAR(30) NOT NULL
);
--Table for roles of employees
CREATE TABLE roles (
    id INT PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department(id)
);
--Table for employees--
CREATE TABLE employees (
    id INT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT,
    manager_id INT,
    FOREIGN KEY (role_id) REFERENCES roles(id),
    FOREIGN KEY (manager_id) REFERENCES employees(id)
);
