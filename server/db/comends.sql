USE manageme;
/*
select id from property where name = 'MA-05 Casa Fantastica' */

-- drop table message

/* select * from property; */

-- insert into chet values(1 , 6 , "2020-11-04", "sup?");
-- select * from chet;
/* select count(b.id),channel
from booking as b join property as p
on b.property = p.id
join property_user as pu on pu.property = p.id

group by channel; */

/* select * from user_type; */
/*
select t_id, task, complete,date,ut.type, t.type as typeId, serviceProvider
from todo as t join user as u on t.serviceProvider = u.user_id
join user_type as ut on u.user_type = ut.type_id
where u.user_id = 52; */
/*
select * from user;
 */
select t_id as id, task, complete,date,ut.type, t.type as typeId, serviceProvider
        from todo as t join user as u on t.serviceProvider = u.user_id
        join user_type as ut on u.user_type = ut.type_id
        where u.user_id = 53;

-- select * from user
/* SELECT t.t_id, task, complete, date, ut.type, t.type as typeId, img, serviceProvider
        FROM todo AS t
        JOIN user_type AS ut
        on t.type = ut.type_id
        WHERE t.property =  */

/* SELECT t.t_id, task, complete, date, ut.type, t.type as typeId, img, serviceProvider
        FROM todo AS t JOIN user_type AS ut on t.type = ut.type_id
        join user as u on u.user_id =
        WHERE u.user_id =   */


/* select channel, count(b.id) as numberOfBooking
        from user as u join property_user as pu
        on u.user_id = pu.user
        join property as p on p.id = pu.property
        join booking as b on b.property = p.id
        where  u.user_id = 1
        group by channel; */

-- insert into message values(null, 1, 31, "2020-11-4", "hey you")
-- SELECT m.*
-- FROM  message as m
--         where( m.sender = 1 or m.getter = 1)
--         AND (m.sender = 6 or m.getter = 6)

-- select * from message
-- select channel, count(b.id) as numberOfBooking
--         from user as u join property_user as pu
--         on u.user_id = pu.user
--         join property as p on p.id = pu.property
--         join booking as b on b.property = p.id
--         where  u.user_id = 1
--         group by channel;



/* select * from user; */

/* select count(b.id),channel
from user as u join property_user as pu
on u.user_id = pu.user
join property as p on p.id = pu.property
join booking as b on b.property = p.id
where  u.user_id = 9
group by channel; */

-- ALTER TABLE booking DROP first_name;
-- ALTER TABLE booking DROP last_name;
-- ALTER TABLE booking DROP img;
-- ALTER TABLE booking DROP external_property_name;
-- ALTER TABLE booking modify COLUMN id varchar(110);



-- alter TABLE booking add name varchar(60);
--
-- insert INTO user_type values (
--     null,
--     "Pool"
-- );

-- drop TABLE maneger;

-- Insert Into manger_employee values(1, 53);
-- select * from manger_employee;
-- SELECT type from user_type where type_id = 1;

-- create database mangeme2 ;

-- create TABLE manger_employee (
--     manager_id int,
--     employee_id int,
--     FOREIGN KEY (manager_id) REFERENCES user(user_id),
--     FOREIGN KEY (employee_id) REFERENCES user(user_id)
-- );

-- insert into property_user values(33, 2);

-- select * from owner


-- insert into manger_employee values (
--     1,
--     4
-- )

-- create TABLE maneger (
--     id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--     first_name VARCHAR(40),
--     last_name VARCHAR(40),
--     img text,
--     email VARCHAR(80),
--     phone VARCHAR(10),
--     datejoin datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
--     user_type INT DEFAULT 1,
--     FOREIGN KEY (user_type) REFERENCES user_type(type_id)
-- );

-- select * from user;

-- select user_id as id, first_name as firstName, last_name as lastName
-- from user as u join manger_employee as me
-- on u.user_id = me.employee_id
-- where me.manager_id = 2;

-- alter TABLE booking add type varchar(70);

-- select user_id as id, first_name as firstName, last_name as lastName, email, phone, datejoin, type, img
-- from user as u join manger_employee as me
-- on u.user_id = me.employee_id
-- join user_type as ut
-- on u.user_type = ut.type_id
-- where me.manager_id = 1;


-- DELETE from manger_employee where manager_id = 1 and employee_id = 3;

-- DELETE from user_type where type_id =

-- select * from user;

-- UPDATE user_type set type = '';

-- UPDATE booking
-- SET g_first_name = 'dudi'
-- WHERE id = 4;


-- SELECT u.email, u.phone, p.name, p.address
--                         FROM property_user AS pu JOIN property AS p ON pu.property = p.id
--                         JOIN user as u ON u.user_id = pu.user
--                         JOIN user_type AS ut ON ut.type_id = u.user_type
--                         WHERE p.id = 3
--                         AND ut.type =  'Plumbing'

-- select * from property_user
-- select * from user
-- select * from user_type
-- select * from property
-- select * from user;


-- ALTER TABLE property
-- RENAME COLUMN adress to address;
-- ALTER TABLE property
-- RENAME COLUMN num_roms to rooms;
-- ALTER TABLE property
-- RENAME COLUMN bathroms to bathrooms;
-- ALTER TABLE property
-- RENAME COLUMN max_gusts to guests;


-- ALTER TABLE booking
-- ADD phone varchar(10);

-- ALTER TABLE property
-- ADD name text;

-- select * from booking
-- select * from user_type;

-- UPDATE booking

--                 SET channel = 'vrbo'
--                 WHERE id = 4;
-- `UPDATE booking
--                 SET ${key} = '${booking[key]}'
--                 WHERE id = ${id};`

-- SELECT * from booking;
-- INSERT INTO booking VALUES(
--         null,
--         "2020-04-22 14:30:00",
--         "2020-04-31 14:30:00",
--         2,
--         4,
--         "airbnb",
--         9,
--         "yago",
--         "jekobson",
--         "ma-23",
--         "masd.img"
-- );





-- alter TABLE booking add external_property_name varchar(50);

--  CREATE TABLE user_type (
--     type_id INT AUTO_INCREMENT PRIMARY KEY,
--     type_name varchar(40)
-- );


-- create TABLE user (
--     user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--     first_name VARCHAR(40),
--     last_name VARCHAR(40),
--     email VARCHAR(80),
--     phone VARCHAR(10),
--     datejoin datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
--     user_pass VARCHAR (60),
--     user_type INT,
--     token VARCHAR (60) NOT NULL,
--     FOREIGN KEY (user_type) REFERENCES user_type(type_id)
-- );


-- CREATE TABLE owner (
--     o_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
--     name varchar(40),
--     phone varchar(10),
--     country varchar(50),
--     email varchar(60)
-- );



-- CREATE TABLE property(
--     id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
--     img TEXT,
--     adress TEXT,
--     num_roms int,
--     bathroms int,
--     max_gusts int,
--     pool boolean,
--     ac boolean,
--     wifi boolean,
--     kitchen boolean,
--     owner int,
--     FOREIGN KEY (owner) REFERENCES owner(o_id)
-- );



-- CREATE TABLE todo (
--     t_id int,
--     task text,
--     property int,
--     service_type int,
--     create_date datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
--     is_complete boolean,
--     img text,
--     FOREIGN KEY (property) REFERENCES property(id),
--     FOREIGN KEY (service_type) REFERENCES user_type(type_id)
-- );


-- CREATE TABLE booking (
--     id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
--     start_date datetime NOT NULL,
--     end_data datetime NOT NULL,
--     property int,
--     gusts int,
--     channel text,
--     nights int,
--     g_first_name varchar(50),
--     g_last_name varchar(50),
--     g_photo text,
--     FOREIGN KEY (property) REFERENCES property(id)
-- );



-- CREATE TABLE property_user (
--     user int,
--     property int,
--     FOREIGN KEY (user) REFERENCES user(user_id),
--     FOREIGN KEY (property) REFERENCES property(id),
--     PRIMARY KEY (user, property)
-- );


-- insert into user_type values (
--     null,
--     "manager"
-- );

-- SELECT * from user_type;

-- DELETE from TODO;
-- alter TABLE TODO drop service_provider_type;

-- insert into PROPERTY_SERVICE values (
--     14,
--     6
-- );

-- ALTER TABLE PROPERTY_SERVICE DROP S;

-- ALTER TABLE PROPERTY_SERVICE ADD create_date datetime NOT NULL DEFAULT CURRENT_TIMESTAMP;

-- CREATE TABLE PROPERTY_SERVICE (
--     service_provider int,
--     property int,
--     FOREIGN KEY (service_provider) REFERENCES USER(user_id),
--     FOREIGN KEY (property) REFERENCES PROPERTY(id),
--     PRIMARY KEY (service_provider, property)
-- ) ;

-- SELECT * FROM user;
-- SELECT * FROM user_type;
-- SELECT * FROM property;
-- SELECT * FROM property_user;
-- SELECT * FROM owner;
-- SELECT * FROM booking;
-- SELECT * FROM todo;
-- DELETE FROM USER;

-- INSERT INTO OWNERS VALUES(
--         NULL,
--         'Yossi Cohen',
--         '0528756600',
--         'Israel',
--         'yossicohen@gmail.com');

-- SELECT id, img, adress, num_roms, bathroms, max_gusts, pool, ac, wifi, kitchen, onwer, maneger
--  FROM PROPERTY, USER
-- WHERE PROPERTY.maneger = USER.user_id
-- AND PROPERTY.maneger = 11;

-- INSERT INTO user_type VALUES(
--         NULL,
--         'Plumbing');


-- insert into USER_TYPE values (null, "elctricety");
-- ALTER TABLE booking ADD external_id text;
-- ALTER TABLE booking modify name text;
-- SELECT * FROM booking
-- SELECT * FROM user
-- ALTER TABLE USER ADD avater text;
-- insert into user_type values(null, 'Concierge')
-- delete from user_type where type_id = 9

--
-- select * from property_user
-- select * from property
-- select * from owner
-- select * from user
-- select * from manger_employee
-- select * from user_type
-- DELETE from user where user_id = 7
-- DELETE from property_user where user = 7
-- DELETE from owner where o_id = 3