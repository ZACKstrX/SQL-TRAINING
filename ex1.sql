use ibem
create table groupe(idG int primary key,
							annéeG int,
							niveauG varchar (6));
create table Etudiante(idE int primary key,
							nomE varchar(30),
							prenomE varchar (30),
							AgeE int, 
							idG int,
							constraint FK_ET_GR FOREIGN KEY(idG) REFERENCES Groupe(idG));
create table note(idN int primary key,
					matier varchar(15),
					note int,
					idE int ,
					constraint FK_NT_ET FOREIGN KEY (idE) REFERENCES Etudiant (idE)
	)