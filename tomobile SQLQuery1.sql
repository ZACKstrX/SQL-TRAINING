create table fournisseur (NF int primary key,
			 NomF varchar(30),
			 Statut varchar(100),
			 ville varchar(50)
);
create table usine(NU int primary key,
			 NomU varchar(30),
			 Ville varchar(50)
);
create table produit(NP int primary key,
					 NomP varchar(30) ,
					 Couleur varchar(30),
					 Poids float
);
create table livraison( NP int ,
						NU int ,
						NF int ,
						Quantité int,
									constraint NP FOREIGN key (NP) references produit(NP),
									constraint NU FOREIGN key (NU) references usine(NU),
									constraint NF FOREIGN key (NF) references fournisseur(NF)
);
----------------------------------------------------------------------------------------------------------------------------------


INSERT INTO fournisseur (NF, NomF, Statut, ville)
VALUES
(1, 'Montoe', 'producteur', 'Paris'),
(2, 'Au bon siége', 'Sous-traitant', 'Limoges'),
(3, 'Saint Gobain', 'Producteur', 'Paris');


INSERT INTO usine (NU, NomU, Ville)
VALUES
(1, 'Citroen', 'Paris'),
(2, 'Peugeot', 'Sochaux'),
(3, 'Citroen', 'Sochaux'),
(4, 'Renault', 'Paris');

INSERT INTO produit (NP, NomP, Couleur, Poids)
VALUES
(1, 'Plaquette', 'noir', 0.257),
(2, 'Siége', 'rouge', 15.230),
(3, 'Siége', 'verte', 15.230);


INSERT INTO livraison (NP, NU, NF, Quantité)
VALUES
(3, 1, 2, 60),
(1, 2, 3, 2500),
(1, 3, 3,3000),
(2, 2, 3, 120),
(3, 1, 1, 49),
(3, 2, 1, 45),
(3, 3, 1, 78);

----------------------------------------------------------------------------------------------------------------------------------
delete from fournisseur
Select * from fournisseur