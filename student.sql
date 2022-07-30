drop database if exists DBIT236         ;


create database DBIT236;
USE DBIT236;

drop table if exists student;

create table student (
    St_No INT (10)NOT NULL,
    F_Name VARCHAR (35),
    L_Name VARCHAR (20),
    House VARCHAR (35),
    PRIMARY KEY (St_No));

    /*desc student;*/
    insert into student(St_No,F_Name,L_Name,House)values(100,'supun','abeykoon','gemunu');
    insert into student(St_No,F_Name,L_Name,House)values(200,'kupun','silva','wiyaya');
    insert into student(St_No,F_Name,L_Name,House)values(300,'nulen','perera','perakum');

    insert into student(St_No,F_Name,L_Name,House)values(400,'vitanage','lal','perakum');


    select* from student;
    drop table if exists parent;

    create table parent(
    NIC INT (10) PRIMARY KEY,
    F_Name VARCHAR (35),
    Contact INT (12),
    Job VARCHAR (35),
    St_No INT(10), FOREIGN KEY(St_No) REFERENCES student(St_No));

    desc parent;

insert into parent(NIC,F_Name,Contact,job, St_No)values(851964447,'Shenuka',0772287083,'Lecturer',100);
insert into parent(NIC,F_Name,Contact,job, St_No)values(751964447,'Sahila',0722287083,'Businesswoman',200);
insert into parent(NIC,F_Name,Contact,job, St_No)values(781964447,'Pramoda',0762287083,'doctor',300);

/*insert into parent(NIC,F_Name,Contact,job, St_No)values(851964447,'Shenuka','0772287083','Lecturer','100');
insert into parent(NIC,F_Name,Contact,job, St_No)values(851964447,'Shenuka','0772287083','Lecturer','100');*/



/*This is sub Query*/
select* from parent;
