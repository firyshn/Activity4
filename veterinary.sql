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

INSERT INTO animals(animalid, name, species, breed, dateofbirth, gender, color, ownerid)
VALUES 
(1, 'Russell','Afghan Hound', 'Dog', 2020-01-14,'boy', 'brown', 2),
(2, 'Leo','Bulldog' , 'Dog' , 2019-02-15,'boy', 'white', 5),
(3, 'Cookie','Airedale Terrier', 'Dog', 2018-03-22,'girl', 'black', 6),
(4, 'Loki','Alaskan Malamute', 'Dog', 2012-04-9,'boy', 'brown', 4),
(5, 'Penny','Affenpinschar', 'Dog', 2019-5-12,'girl', 'orange',),
(6, 'Migs','Bernese Mountain Dog', 'Dog', 2018-06-12,'boy', 'black-white', 1),
(7, 'Lily','Border Collie', 'Dog', 2019-07-21,'girl', 'ginger', 7),
(8, 'Max','Bloodhound', 'Dog', 2019-08-7,'boy', 'brown', 3),
(9, 'Luigi','Golden Retriever', 'Dog', 2022-9-14,'boy', 'yellow', 9),
(10, 'Brownie','Pug', 'Dog', 2021-10-01,'girl', 'white', 10);

INSERT INTO appointments(appointid, animalid, appointdate, reason)
VALUES
(1.1, 1, 2025-02-01, 'Allergy'),
(1.2, 2, 2025-05-27, 'Vaccination'),
(1.3, 3, 2025-05-10, 'Allergy'),
(1.4, 4, 2025-07-23, 'Vaccination'),
(1.5, 5, 2025-07-24, 'Physical Examination'),
(1.6, 6, 2025-09-03, 'Urinary Tract Infections'),
(1.7, 7, 2025-09-29, 'Allergy'),
(1.8, 8, 2025-11-17, 'Vaccination'),
(1.9, 9, 2025-12-01, 'Vaccination'),
(1.10, 10, 2025-12-18, 'Allergy');

INSERT INTO doctors(doctorid, dfirstname, dlastname, speciality, phone, email)
VALUES
(1, 'Dr.Maria', 'Santos', 'General Veterinarian', '987-654-3210', 'maria@example.com'),
(2, 'Dr.Antonio', 'Gonzales', 'Feline Specialist', '555-123-4567', 'antonio@example.com'),
(3, 'Dr.Felipe', 'Luna', 'Orthopedic Specialist', '111-222-3333', 'felipe@example.com'),
(4, 'Dr.Sofia', 'Reyes', 'Dermatology Specialist', '999-888-7777', 'sofia@xample.com'),
(5, 'Dr.Luis', 'Torres', 'Surgery Specialist', '123-555-7777', 'luis@example.com'),
(6, 'Dr.Carmen', 'Fernandez', 'Opthalmology Specialist', '333-222-1111', 'carmen@example.com'),
(7, 'Dr.Jane', 'Masangkay', 'General Veterinarian', '985-555-1111', 'jane@example.com'),
(8, 'Dr.Senku', 'Hernandez', 'Feline Specialist', '222-888-9865', 'senku@example.com'),
(9, 'Dr.John', 'Alberts', 'Opthalmology Specialist', '888-210-1781', 'john@example.com'),
(10, 'Dr.Gen', 'Obelia', 'Dermatology Specialist', '657-235-2921', 'gen@example.com');

INSERT INTO invoices(invoiceid, appointid, totalamount, paymentdate)
VALUES
(1, 1.1, 50.00, '09:30:00'),
(2, 1.2, 75.00, '14:15:00'),
(3, 1.3, 100.00, '11:00:00'),
(4, 1.4, 200.00, '13:45:00'),
(5, 1.5, 80.00, '10:30:00'),
(6, 1.6, 30.00, '15:00:00'),
(7, 1.7, 75.00, '09:15:00'),
(8, 1.8, 150.00, '16:30:00'),
(9, 1.9, 60.00, '14:45:00'),
(10, 1.10, 40.00, '11:30:00');

INSERT INTO medicalrecords (recordid, animalid, recorddate, doctorid, diagnosis, prescription, notes)
VALUES 
    (1, 1, '2023-01-05 00:00:00', 1, 'Health check', 'N/A', 'Regular checkup, no issue detected'),
    (2, 2, '2023-01-10 00:00:00', 1, 'Vaccination', 'Vaccine X', 'Administered vaccination X as per schedule'),
    (3, 3, '2023-02-02 00:00:00', 3, 'Sprained leg', 'Pain Medication', 'Rest recommended for two weeks'),
    (4, 4, '2023-02-15 00:00:00', 1, 'Dental cleaning', 'N/A', 'Completed dental cleaning procedure'),
    (5, 5, '2023-03-10 00:00:00', 4, 'Skin infection', 'Antibiotics', 'Prescribed antibiotics for skin infection'),
    (6, 6, '2023-03-10 00:00:00', 2, 'Flea infestation', 'Flea Treatment', 'Administered flea treatment'),
    (7, 7, '2023-04-12 00:00:00', 1, 'Vaccination', 'Vaccine Y', 'Administered vaccination Y as per schedule'),
    (8, 8, '2023-04-18 00:00:00', 5, 'Spaying', 'N/A', 'Successfully performed spaying surgery'),
    (9, 9, '2023-05-02 00:00:00', 4, 'Allergic reaction', 'Antihistamines', 'Allergic reaction due to food prescribed antihistamine'),
    (10, 10, '2023-05-20 00:00:00', 6, 'Conjunctivitis', 'Eye drops', 'Prescribed eye drops for conjunctivitis');

ALTER TABLE owners
ADD COLUMN registereddate DATE;

ALTER TABLE invoices RENAME COLUMN paymentdate to paymenttime;

DELETE FROM appointments
WHERE appointid = 1.10;

UPDATE doctors SET dlastname = 'Reyes-Gonzales' WHERE doctorid = 4;

SELECT DISTINCT species
FROM animals;