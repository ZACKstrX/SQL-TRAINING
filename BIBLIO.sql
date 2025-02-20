create database bibliotheque ;
use bibliotheque

create table auteur(IDauteur int primary key,
nom varchar(15),
prenom varchar(15),
nationalité varchar(15));

create table livre(IDlivre int primary key,
titre varchar(30),
IDauteur int,
genre varchar(15),
anner_pub int,
constraint FK_L_A FOREIGN KEY (IDauteur) REFERENCES auteur(IDauteur));

create table membre(IDmembre int primary key,
nomM varchar(15),
prenom varchar (15),
date_inscript Date);

create table emprent(IDEMP int primary key, IDmembre int, constraint FK_ET_Mem foreign key(IDmembre) References membre (IDmembre),IDlivre int, constraint FK_L_AA foreign key (IDlivre) references livre (IDlivre),DateEmp Date,DateRet Date);

constraint FK_E_M foreign key(IDmembre) references membre(IDmembre));
INSERT INTO auteur (IDauteur,nom,prenom,nationalité)     VALUES()
