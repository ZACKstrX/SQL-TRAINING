create table Etudiant(NEtud int primary key,
			 Nom varchar(50),
			 Prenom varchar(50)
			 );
create table Matiere(Code_Mat int primary key ,
					 Nom_Mat varchar(50),
					 Coeffition int
					 );
create table Evaluer(NEtud int, 
					  Code_Mat int,
					  Note float,
					  FOREIGN KEY (NEtud) references Etudiant(NEtud),
					  FOREIGN KEY (Code_Mat) references	Matiere(Code_Mat),
					  );
---------------------------------------------------------------------------------------------------------------------------------------------------
insert into Etudiant values(1,'Ahmed','Ali'),
						   (2,'youssef','malik'),
						   (3,'Kamal','moumkin');

insert into Matiere values(1,'Programation Orientée Objet',3),
						  (2,'Analyse et conception orientée objet',3),
						  (3,'Communication en arabe',1);

insert into Evaluer values (1,2,16),
							(2,1,13),
							(3,1,15),
							(2,2,10),
							(3,3,11); 
