CREATE DATABASE veterinary;

CREATE TABLE owners(
    ownerid INT PRIMARY KEY,
    ofirstname VARCHAR(50),
    oflastname VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE animals (
    animalid INT PRIMARY KEY,
    name VARCHAR (50),
    species VARCHAR (50),
    breed VARCHAR (50),
    dateofbirth DATE,
    gender VARCHAR (10),
    color VARCHAR (50),
    ownerid INT,
    FOREIGN KEY (ownerid) REFERENCES owners(ownerid)
);

CREATE TABLE appointments (
    appointid INT PRIMARY KEY,
    animalid INT,
    appointdate DATE,
    reason VARCHAR(255),
    FOREIGN KEY (animalid) REFERENCES animals(animalid)
);

CREATE TABLE doctors (
    doctorid PRIMARY KEY,
    dfirstname VARCHAR (50)
    dlastname VARCHAR (100)
    speciality VARCHAR (100)
    phone VARCHAR (15)
    email VARCHAR (100)
);

CREATE TABLE invoices (
    invoiceid PRIMARY KEY
    appointid FOREIGN KEY
    totalamount NUMERIC(10,2)
    paymentdate TIME
); 

CREATE TABLE medicalrecords  (
    recordid PRIMARY KEY,
    animalid INT,,
    recorddate DATE,
    doctorid INT,
    diagnosis VARCHAR (255),
    prescription VARCHAR (255),
    notes VARCHAR (50)
    FOREIGN KEY (animalid) REFERENCES animals (animalid),
    FOREIGN KEY (doctorid) REFERENCES doctors (doctorid)
);

INSERT INTO owners(ownerid, ofirstname, oflastname, address, phone, email)
VALUES 
(1, 'Hannah', 'Cuevas', 'Cuenca', 09944673669, 'hannah@gmail.com'),
(2, 'Gee-Anne', 'Lescano', 'Lipa', 09924673869, 'geeanne@gmail.com'),
(3, 'Jim', 'Ebreo', 'Rosario', 09934673760, 'jimebreo@gmail.com'),
(4, 'Shenna', 'Bellen', 'Rosario', 09910056722, 'shennabellen@gmail.com'),
(5, 'Mark', 'Maglaway', 'Cuenca', 09123456789, 'markmaglaway@gmail.com'),
(6, 'John', 'Cuevas', 'Mindanao', 09568926936, 'johncuevas@gmail.com'),
(7, 'Spongebob', 'Squarepants', 'Bikini Bottom', 09936275382, 'spongebob@gmail.com'),
(8, 'Dora', 'Explorer', 'Japan', 09926783528, 'doraexplorer@gmail.com'),
(9, 'Angel', 'Vargas', 'Bulacan', 0991776722, 'angelvargas@gmail.com'),
(10, 'Ariel', 'Mermaid', 'San Juan', 0987646789, 'arielmermaid@gmail.com');

INSERT INTO animals(animalid, species, breed, dateofbirth, gender, color, ownerid)
VALUES 
(1, 'Afghan Hound', 'Dog', 2020-01-14,'boy', 'brown', 2),
(2, 'Bulldog' , 'Dog' , 2019-02-15,'boy', 'white', 5),
(3, 'Airedale Terrier', 'Dog', 2018-03-22,'girl', 'black', 6),
(4, 'Alaskan Malamute', 'Dog', 2012-04-9,'boy', 'brown', 4),
(5, 'Affenpinschar', 'Dog', 2019-5-12,'girl', 'orange',),
(6, 'Bernese Mountain Dog', 'Dog', 2018-06-12,'boy', 'black-white', 1),
(7, 'Border Collie', 'Dog', 2019-07-21,'girl', 'ginger', 7),
(8, 'Bloodhound', 'Dog', 2019-08-7,'boy', 'brown', 3),
(9, 'Golden Retriever', 'Dog', 2022-9-14,'boy', 'yellow', 9),
(10, 'Pug', 'Dog', 2021-10-01,'girl', 'white', 10);