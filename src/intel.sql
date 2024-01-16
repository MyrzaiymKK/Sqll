create table animals(
                        id serial primary key ,
                        first_name varchar(50),
                        gender varchar (255),
                        age int
);

insert into animals(first_name, gender, age)
values
    ('dog','male',5),
    ('cat','female',3),
    ('horse','male',2),
    ('cow','female',6),
    ('bug','male',4),
    ('sheep','male',1);

create table students(
                         id serial primary key ,
                         name varchar(50),
                         gender varchar,
                         age int
);

insert into students(name,gender,age)
values
    ('Myrzaiym','female',20),
    ('Aiturgan','female',19),
    ('Zeinep','female',28),
    ('Bactygul','female',23),
    ('Gulumkan','female',22);

create table teachers(
                         id serial primary key ,
                         name varchar(50),
                         status varchar,
                         staje int
);
insert into teachers(name, status, staje)
values
    ('Janara','russian',3),
    ('Ailin','math',4),
    ('Ademi','music',2),
    ('Medina','english',5);

create table kids(
                     id serial primary key ,
                     name varchar(50),
                     level varchar,
                     age int
);

insert into kids(name, level, age)
values
    ('Ademi','1',6),
    ('Fatima','2',7),
    ('Uuljan','2',8),
    ('Medina','8',14);

create table hospital(
                         id serial primary key ,
                         name varchar(50),
                         address varchar
);
insert into hospital(name,address)
values
    ('Mamakeev(60)','prospect Manasa'),
    ('Republic','prospect Mira'),
    ('Chuiski','Gorkie');

create table doctor(
                       id serial primary key ,
                       name varchar(50),
                       stag int,
                       hospitals varchar references hospital(id)
);
insert into doctor(name, stag, hospitals)
values
    ('Mika',7,1),
    ('Ailin',9,1),
    ('Janna',6,2),
    ('Kunduz',4,3);

create table players(
                        id serial primary key ,
                        name varchar(59),
                        age int
);
alter table players add column email varchar;

insert into players(name, age,email)
VALUES
    ('Kairat',20,'kairat2gamil.com'),
    ('Azat',21,'aza@gmail.com'),
    ('Elim',22,'elim@gmail.com'),
    ('Rahim',23,'rahim@gmail.com');

create table komandd(
                        id serial primary key ,
                        name varchar,
                        player int references players(id)
);

insert into komandd(name,player)
VALUES
    ('Jalyn',4),
    ('Kok-jal',2);

create table job(
                    id serial primary key ,
                    professions varchar
);
insert into job(professions)
VALUES
    ('teacher'),
    ('seller'),
    ('policeman'),
    ('doctor');

create table employe(
                        id serial primary key ,
                        first_name varchar,
                        last_name varchar ,
                        emaill varchar,
                        date_of_birth date,
                        job_id int REFERENCES job(id)
);
alter table employe add constraint email unique (emaill);
alter table employe alter column date_of_birth set not null;
insert into employe(first_name, last_name, emaill, date_of_birth, job_id)
VALUES
    ('Myrzaiym','Keldibekova','mika@gmail.com','2003-10-03',1),
    ('Ailin','Sharsheeva','ailin@gmail.com','1998-03-16',2),
    ('Rasul','Zamirbekov','rasul@gmail.com','2000-11-11',3),
    ('Ademi','Abykeeva','adema@gmail.com','2001-9-12',4);
