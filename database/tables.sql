-- Active: 1700363130853@@dpg-clcmsbd4lnec73e3mefg-a.oregon-postgres.render.com@5432@hrmarquez26
create table tbl_role
(
    id SERIAL PRIMARY key,
    name_role varchar(100), 
    is_active BOOLEAN DEFAULT true, 
    created_date TIMESTAMP DEFAULT current_timestamp, 
    deleted_date TIMESTAMP, 
    update_date TIMESTAMP
);

insert into tbl_role
(name_role)
values
('Admin'), 
('Client');

select * from tbl_role;

create table tbl_users
(
    user_name varchar(30) PRIMARY key,
    email VARCHAR(70) UNIQUE, 
    pass VARCHAR(30),
    profile_picture bytea, 
    id_role int REFERENCES tbl_role(id),
    is_active BOOLEAN DEFAULT true, 
    created_date TIMESTAMP DEFAULT current_timestamp, 
    deleted_date TIMESTAMP, 
    update_date TIMESTAMP
);

insert into tbl_users 
(user_name, email, pass, id_role)
values 
('hrmarquez26', 'hrmarquez69@gmail.com', '2626***', 1),
('cliente', 'cliente@gmail.com', 'Shalom26', 2);

select * from tbl_users
where user_name = 'hrmarquez26' and pass = '2626***' and is_active = true;

drop table tbl_example;

create table tbl_example 
(
    id serial primary key, 
    data_example varchar(200),
    user_name varchar(500)
)