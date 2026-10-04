drop table if exists loan_payment;
drop table if exists loan;
drop table if exists loan_type;
drop table if exists customers;

-- create database bank_loan_management;

-- drop database bank_loan_management;


create table customers (
    customer_id serial primary key,
    customer_name varchar(100),
    phone varchar(15),
    email varchar(100),
    city varchar(50)
);

create table loan_type (
    loan_type_id serial primary key,
    loan_type_name varchar(50) not null,
    loan_purpose varchar(150)
);

create table loan (
    loan_id serial primary key,
    customer_id int,
    loan_type_id int,
    principal decimal(12,2),
    interest_rate decimal(5,2),
    tenure int,
    loan_status varchar(20),
    start_date date,
    foreign key (customer_id) references customers(customer_id),
    foreign key (loan_type_id) references loan_type(loan_type_id)
);

create table loan_payment (
    payment_id serial primary key,
    loan_id int,
    payment_date date,
    amount numeric(12,2),
    payment_mode varchar(20),
    payment_status varchar(20),
    foreign key (loan_id) references loan(loan_id)
);

select * from customers;
select * from loan_type;
select * from loan;
select * from loan_payment;