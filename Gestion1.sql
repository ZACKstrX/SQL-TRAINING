Create table Departements(
	N_dep int primary key ,
	Nom_dep varchar(50), 
	VILLE varchar(50)
	);

Create table Employes(
	N_E int primary key,
	Nom_E varchar(50),
	PROF varchar(50),
	SAL float,
	COMM float,
	N_dep int,  
	FOREIGN KEY (N_dep) REFERENCES Departements(N_dep),
	);
------------------------------------------------------------------------------------------------------------------------------------------------
insert into Departements values(1,'informatique','tanger'),
							   (2, 'resource_humain','tanger'),
							   (3,'admininstratif','tanger'),
							   (4,'financier','tanger');

insert into Employes values (1,'Ahmed','Developpeur_Informatique',8000,1500,1),
							(2,'Amine','Security_Officer',20000,3000,1),
							(3,'Salah', 'Recruteur', 12000,1000,2),
							(4,'karim', 'Comtable', 11000,2000,3),
							(5,'jawad','Directeur_general',2000,5000,4);
----------------------------------------------------------------------------------------------------------------------------------------------
select Nom_E from  Employes where COMM is not null;
select Nom_E,PROF,SAL FROM Employes order by PROF ASC,SAL DESC;
SELECT AVG (SAL)as Salaire_moyenne from Employes;
Select AVG (SAL)from Employes E, Departements D where E.N_dep = D.Nom_dep and D.Nom_dep='financier';
select N_Dep,Max(SAL)as Salaire_moyenne_Production from Employes;