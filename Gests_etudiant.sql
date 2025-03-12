create table Etudiant(NEtud int primary key,
			 Nom varchar(50),
			 Prenom varchar(50)
			 );
create table Matiere(Code_Mat int primary key ,
					 Nom_Mat varchar(50),
					 Coeffition int
					 );
create table Evalueer(NEtud int, 
					  Code_Mat int,
					  Note float,
					  FOREIGN KEY (NEtud) references Etudiant(NEtud),
					  FOREIGN KEY (Code_Mat) references	Matiere(Code_Mat),
					  );