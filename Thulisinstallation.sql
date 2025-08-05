use thuliinstallation
go

create table customers(
cus_id int Identity primary key,
firstname varchar(100),
email varchar (100), 
phone_number varchar(10),
city varchar(15)
)

create table products (
prod_id int identity primary key,
prod_name varchar (100),
inch int,
price decimal(10,2),
stock int)

create table orders(
order_id int identity primary key ,
cus_id int not null,
orderdate datetime default GETDATE(),
totalamount decimal(10,2),
foreign key (cus_id) references customers (cus_id))

select* from products
select * from customers
select * from orders

insert into customers(firstname,email,phone_number,city)
values('Thulisile','thul@gmail.com','0739661774','Johannesburg'),
('Zizi','zee@gmail','0789441234','Durban')

insert into products(prod_name, inch,price,stock)
values('waterwave',24,2000.00,10),
('straight hair',30,3500.00,7),
('jerry curls',26,4000.00,15)

insert into orders(cus_id,totalamount)
values(1,7000.00)

delete from products 
Where prod_id in (4,5,6,7,8)

update products set price = 3000.00
where prod_id =3