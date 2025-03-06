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
							   (3,'administratif','tanger'),
							   (4,'financier','tanger');

insert into Employes values (1,'Ahmed','Developpeur_Informatique',8000,1500,1),
							(2,'Amine','Security_Officer',20000,3000,1),
							(3,'Salah', 'Recruteur', 12000,1000,2),
							(4,'karim', 'Comtable', 11000,2000,3),
							(5,'jawad','Directeur_general',2000,5000,4);