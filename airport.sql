create table pilote( NUMPIL int primary key,
					 NOMPIL varchar(30),
					 VILLE varchar(30),
					 SALAIRE float
		);

create table avion( NUMAV int primary key,
					NOMAV varchar(100),
					VILLE varchar(30),
					CAPACITE int
		);

create table VOL( NUMVOL int primary key ,
				  NUMPIL int,
				  NUMAV int,
				  VILLE_DEP varchar(30),
				  VILLE_ARR varchar(30),
				  H_DEP time,
				  H_ARR time,
				  constraint NUMPIL FOREIGN key (NUMPIL) references pilote(NUMPIL),
				  constraint NUMAV FOREIGN key (NUMAV) references avion(NUMAV),
		);
-----------------------------------------------------------------------------------------------------------------------------------
INSERT INTO PILOTE (NUMPIL, NOMPIL, VILLE, SALAIRE)
VALUES
(1, 'Amir Benkirane', 'Meknès', 25000),
(2, 'Fatima Zahra El Alaoui', 'Marrakech', 20000),
(3, 'Mohamed Amine Benabdellah', 'Casablanca', 30000),
(4, 'Amina Lahbabi', 'Rabat', 22000),
(5, 'Omar El Moussaoui', 'Meknès', 28000);	

INSERT INTO AVION (NUMAV, NOMAV, CAPACITE, VILLE)
VALUES
(1, 'Boeing 737-800', 400, 'Marrakech'),
(2, 'Airbus A320-200', 300, 'Casablanca'),
(3, 'Boeing 787-9', 500, 'Rabat'),
(4, 'ATR 72-600', 200, 'Meknès'),
(5, 'Airbus A350-900', 450, 'Marrakech');

-- Insérer des données dans la table VOL
INSERT INTO VOL (NUMVOL, NUMPIL, NUMAV, VILLE_DEP, VILLE_ARR, H_DEP, H_ARR)
VALUES
(1, 1, 1, 'Marrakech', 'Casablanca', '08:00', '09:30'),
(2, 2, 2, 'Casablanca', 'Rabat', '10:00', '11:30'),
(3, 3, 3, 'Rabat', 'Meknès', '12:00', '13:30'),
(4, 4, 4, 'Meknès', 'Marrakech', '14:00', '15:30'),
(5, 5, 5, 'Marrakech', 'Casablanca', '16:00', '17:30');

--------------------------------------------------------------------------------------------------------------------------------
--SOLUTION : 
Select * from avion where CAPACITE >= 350 ; /* Correct*/
Select NUMAV , NOMAV from avion where VILLE='Marrakech'; /*Correct*/
Select NUMPIL , VILLE_DEP from VOL ;/*Correct*/
Select * FROM pilote;/*Correct*/
select NOMPIL , SALAIRE from pilote where VILLE='Meknès'and SALAIRE >20000;/*Correct*/
select NUMAV , NOMAV from avion where VILLE='Marrakech' and CAPACITE >350;/*Correct*/
select NUMPIL from pilote where NUMPIL  NOT in (select NUMPIL from VOL) ;/*Correct*/
select NUMVOL FROM VOL WHERE VILLE_DEP ='Marrakech' and  NUMPIL IN (select NUMPIL from pilote where VILLE='Meknès');/*Correct*/
SELECT NUMVOL FROM VOL JOIN AVION ON VOL.NUMAV = AVION.NUMAV WHERE AVION.VILLE != 'Marrakech';/*Correct*/
select VILLE_ARR FROM VOL where VILLE_DEP='Guelmim';/*Correct*/
-------------------------------------------------------------------------------------------------------------------------------
select NOMPIL FROM pilote where SALAIRE >25000 AND VILLE='Casablanca';
select NUMVOL FROM VOL where VILLE_DEP='Marrakech ' and VILLE_ARR='Agadir';
select NOMAV FROM avion where CAPACITE >400 and VILLE='Rabat';
select NOMPIL FROM pilote where NUMPIL in (select NUMPIL from VOL WHERE VILLE_DEP='Tanger');
select NUMVOL FROM VOL where DATEDIFF( MINUTE, H_DEP, H_ARR) >= 90;
select NUMAV FROM VOL WHERE VILLE_DEP='Guelmim';
select NOMPIL from pilote where SALAIRE>20000 and VILLE='Meknès';
select NUMVOL from VOL where VILLE_DEP='Casablanca' and VILLE_ARR='Marrakech';
select NOMAV from avion where CAPACITE <200 and VILLE='Agadir';
select NOMPIL from pilote where NUMPIL = (select NUMPIL FROM VOL where VILLE_DEP ='Rabat');
----------------------------------------------------------------------------------------------------------------------
SELECT NOMPIL FROM PILOTE WHERE SALAIRE >=15000 and SALAIRE <=25000;
SELECT NOMPIL FROM PILOTE WHERE SALAIRE between 15000 and 25000;

select VILLE_DEP FROM VOL WHERE NUMVOL IN (select NUMAV FROM AVION WHERE CAPACITE >400);
select NUMAV , CAPACITE FROM AVION WHERE NUMAV NOT IN ( select NUMAV  from vol);
select DISTINCT NUMPIL FROM VOL WHERE  VILLE_DEP  IN (select  VILLE FROM pilote);
SELECT * FROM VOL WHERE NUMAV IN (select NUMAV from avion WHERE CAPACITE>300);
select COUNT(NUMAV) FROM VOL WHERE VILLE_DEP='Casablanca';
select * from avion ;

