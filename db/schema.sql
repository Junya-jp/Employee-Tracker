DROP DATABASE IF EXISTS company_db;
CREATE DATABASE company_db;
USE company_db;

CREATE TABLE department (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(30) NOT NULL
);

CREATE TABLE roles (
    role_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30),
    salary DECIMAL,
    department_id INT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES department(department_id)
);

CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT NOT NULL,
    manager_id INT NOT NULL,
    FOREIGN KEY (role_id) REFERENCES roles(role_id),
    FOREIGN KEY (manager_id) REFERENCES employees(employee_id)
);
