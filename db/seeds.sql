-- Departments
INSERT INTO department (id, department_name) VALUES
  (1, 'HR'),
  (2, 'Engineering'),
  (3, 'Marketing');

-- Roles
INSERT INTO roles (id, title, salary, department_id) VALUES
  (1, 'HR Manager', 70000, 1),
  (2, 'Software Engineer', 80000, 2),
  (3, 'Marketing Specialist', 60000, 3);

-- Employees
INSERT INTO employees (id, first_name, last_name, role_id, manager_id) VALUES
  (1, 'John', 'Doe', 1, NULL),
  (2, 'Jane', 'Smith', 2, 1),
  (3, 'Mike', 'Johnson', 3, 1);