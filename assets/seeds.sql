USE employeesDB;

INSERT INTO department (name) VALUES ("Sales"),("Engineering"),("Finance"),("Legal");

INSERT INTO role(title, salary, department_id) VALUES 
("Sales Lead", 100000,1),
("Salesperson", 80000,1),
("Lead Engineer", 150000,2),
("Software Engineer", 120000,2),
("Accountant", 125000,3),
("Legal Team Lead", 250000,4),
("Lawyer", 190000,4);

INSERT INTO employee (first_name, last_name, role_id, department_id) VALUES
("Will", "Smith",1,NULL),
("Blake", "Lively",2,1),
("Vanessa", "Hudgens",3,NULL),4
("Channing", "Tatum",4,3);