--liquibase formatted sql

--changeset Suman:1
CREATE table employee(
    employeeId int PRIMARY KEY NOT NULL ,
    employeeName varchar(255) not null,
    employeeDOB date
)

--changeset Arpan:2
ALTER TABLE employee
    ADD COLUMN addressId INT,
ADD CONSTRAINT fk_employee_address
FOREIGN KEY (addressId)
REFERENCES employee_address(addressId);


--changeset Suman:3
ALTER TABLE employee add column employeeStartDate date
