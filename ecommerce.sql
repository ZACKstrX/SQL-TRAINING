create table Client (
	id_client int primary key ,
	nom varchar(50),
	email varchar(50),
	);

create table Produits(
	id_produit int primary key ,
	nom_produit varchar(100),
	prix float 
	);
create table Commandes(
	id_commande int primary key ,
	id_client int ,
	FOREIGN KEY (id_client) REFERENCES Client(id_client),
	date_commande date 
	);
create table Details_Commande(
	id_commande int,
	FOREIGN KEY (id_commande) REFERENCES Commandes(id_commande),
	id_produit int ,
	FOREIGN KEY (id_produit) REFERENCES Produits(id_produit),
	quantite int 
	);
create table Paiements (
	id_paiement int primary key ,
	id_commande int , 
	FOREIGN KEY (id_commande)REFERENCES Commandes(id_commande),
	montont_paye float 
	);
----------------------------------------------------------------------------------------------------------------------------------------------

