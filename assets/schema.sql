DROP DATABASE IF EXISTS employeesDB;
CREATE DATABASE employeesDB;

USE employeesDB;

CREATE TABLE department (
  id INT AUTO_INCREMENT NOT NULL,
  PRIMARY KEY (id),
  name VARCHAR(30)
);

CREATE TABLE role (
  id INT AUTO_INCREMENT NOT NULL,
  PRIMARY KEY (id),
  title VARCHAR(30),
  salary DECIMAL,
  department_id INT, 
  FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE SET NULL
);

CREATE TABLE employee (
  id INT AUTO_INCREMENT NOT NULL,
  PRIMARY KEY (id),
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  role_id INT,
  FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE SET NULL,
  manager_id INT, 
  FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE SET NULL
);