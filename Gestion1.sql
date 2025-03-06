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
--------------------------------------------------------------------------------------------------------------------------------------------