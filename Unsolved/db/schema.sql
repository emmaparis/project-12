-- department_db schema 
DROP DATABASE IF EXISTS employee_tracker_db;
CREATE DATABASE employee_tracker_db;

USE employee_tracker_db;

-- department table 
CREATE TABLE department (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(30) NOT NULL
);

-- roles table 
CREATE TABLE roles (
  id INT PRIMARY KEY,
  title VARCHAR(30),
  salary DECIMAL, 
  department_id INT
  FOREIGN KEY (department_id)
  REFERENCES department_id
  ON DELETE SET NULL
);

-- employees table 
CREATE TABLE employees (
  id INT PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30), 
 role_id INT
 FOREIGN KEY (role_id)
 REFERENCES roles(id)
 ON DELETE SET NULL
 manager_id INT NULL
 FOREIGN KEY (manager_id)
 REFERENCES employees(id)
 ON DELETE SET NULL
);