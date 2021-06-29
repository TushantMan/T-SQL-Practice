use contract_db
create table department
(
dept_id varchar(8) not null,
dept_name varchar(20) not null,
phone varchar(14) not null,
d_address varchar(50) not null,
primary key(dept_id)
);

create table employees
(employee_id varchar(20) not null,
employee_name varchar(20) not null,
gender bit not null default('1') ,
age tinyint not null,
phone varchar(14),
enter_time smalldatetime not null,
address varchar(50) not null,
primary key (employee_id),
dept_id varchar(8) not null foreign key references department(dept_id)
);

create table factory
(factory_id varchar(8) not null,
factory_name varchar(20) not null,
f_phone varchar(14) not null,
f_address varchar(50) not null,
primary key (factory_id),
manager_id varchar(20) not null foreign key references employees(employee_id)
);

create table products
(product_id varchar(8) not null,
product_name varchar(20) not null,
amount int not null,
price numeric(7,2) not null,
primary key (product_id),
factory_id varchar(8) not null foreign key references factory(factory_id)
);

create table customers
(customer_id varchar(8) not null,
customer_name varchar(20) not null,
phone varchar(14) not null,
address varchar(50) not null
primary key (customer_id)
);

create table contract
(contract_id varchar(8) not null,
payment numeric(7,2) not null,
	register_time smalldatetime not null,
	primary key (contract_id),
	sale_id varchar(20) not null foreign key references employees(employee_id),
	customer_id varchar(8) not null foreign key references customers(customer_id),
	product_id varchar(8) not null foreign key references products(product_id)
	);

Insert department values('S001','Security','12345678900','13th Street Chengdu'),('W001','Workshop','12345678901','14th Street Chengdu'),('O001','Office','12345678902','13th Street Chengdu')
Select*From department
Insert employees values('S2020001','Alex','1','23','13345678900','2020/03/04','134 Street, 45th Ave., Chengdu','S001'),('W2019001','Zhang','1','33','13345678901','2019/01/04','12Street, 45th Ave., Chengdu','W001'),('O2019002','Li','0','25','13345678902','2019/02/04','’50Street, 45th Ave., Chengdu','O001')
Select*From employees
Update employees
set age=28
where employee_id='S2020001';
Update department
set dept_name='Factory Office'
where dept_id='O001';
Update employees
set age=age+1
where gender=1;
Delete from employees
where employee_id='O2019002';
delete employees;
delete department;
Select*From employees
Select*From department