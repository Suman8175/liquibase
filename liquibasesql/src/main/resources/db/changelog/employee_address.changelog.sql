--liquibase formatted sql

--changeset Suman:2

CREATE TABLE employee_address(
    addressId int primary key not null ,
    city varchar(255)
)


--changeset David:4
ALTER TABLE employee_address ADD COLUMN country varchar(50) not null

