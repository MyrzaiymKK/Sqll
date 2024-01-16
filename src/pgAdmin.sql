CREATE TABLE classes(
                        id serial primary key,
                        name varchar
);
insert into classes(name)
values
    ('Myrzaiym'),
    ('Janara'),
    ('Medina'),
    ('Ademi');

create table lernes(
                       id serial primary key,
                       name varchar,
                       classs int REFERENCES classes(id)
);
insert into lernes(name,classs)
values
    ('Datka','1'),
    ('Aizat',4),
    ('Mukhammed',2);

create table seller(
                       id serial primary key,
                       name varchar
);
insert into seller(name)
values
    ('Karim'),
    ('Eles'),
    ('Jamal');

create table shop(
                     id serial primary key,
                     name varchar,
                     sellers int REFERENCES seller(id)
);
insert into shop(name,sellers)
values
    ('Alika room',1),
    ('Trend_setter',2),
    ('Ikona',3);

create table worker(
                       id serial primary key,
                       names varchar,
                       stage int
);
insert into worker(names,stage)
values
    ('Rita',3),
    ('Gulumkan',5),
    ('Ailin',4),
    ('Myraiym',6);
create table company(
                        id serial primary key,
                        name varchar,
                        workerr int REFERENCES worker(id)
);
insert into company(name,workerr)
values
    ('Codify',1),
    ('Manas_opration_system',2),
    ('Fasebook',3),
    ('Google',4);

create table flowers(
                        id serial primary key,
                        name varchar,
                        price int
);
alter table flowers add column shop_name varchar;

insert into flowers(name,price,shop_name)
values
    ('Roze',140,'Terra_flowers'),
    ('Romashka',130,'7cvetov'),
    ('Tulpan',150,'7cvetov'),
    ('Piony',160,'Podari_kg');

create table toy(
                    id serial primary key,
                    name varchar,
                    price int,
                    address varchar
);
alter table toy drop column address;

insert into toy(name,price)
values
    ('Teddy',2000),
    ('Rebbit',1500),
    ('Pinguin',1700);

create table cake(
                     id serial primary key,
                     name varchar,
                     price int
);
alter table cake add constraint name unique (name);
insert into cake(name,price)
values
    ('Medovyi',450),
    ('Krasnyi_barhat',500),
    ('Tvorojnyi',370);

create table chocolate(
                          id serial primary key,
                          name varchar,
                          price int
);
alter table chocolate alter column name set not null;
insert into chocolate(name,price)
values
    ('babaevski',200),
    ('snikers',160),
    ('twix',210);
