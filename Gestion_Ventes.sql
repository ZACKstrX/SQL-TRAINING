CREATE TABLE CATEGORIE (
  codeCategorie INT PRIMARY KEY,
  libelleCategorie VARCHAR(50) NOT NULL,
  remise DECIMAL(5, 2) NOT NULL
);

CREATE TABLE CLIENT (
  numClient INT PRIMARY KEY,
  nomClient VARCHAR(50) NOT NULL,
  prenomClient VARCHAR(50) NOT NULL,
  adresse VARCHAR(100) NOT NULL,
  telephone VARCHAR(20) NOT NULL,
  categorie INT NOT NULL,
  FOREIGN KEY (categorie) REFERENCES CATEGORIE(codeCategorie)
);

CREATE TABLE PRODUIT (
  numProduit INT PRIMARY KEY,
  designation VARCHAR(50) NOT NULL,
  prix DECIMAL(10, 2) NOT NULL
);

CREATE TABLE COMMANDE (
  numCommande INT PRIMARY KEY,
  dateCommande DATE NOT NULL,
  numClient INT NOT NULL,
  FOREIGN KEY (numClient) REFERENCES CLIENT(numClient)
);

CREATE TABLE LIGNECOMMANDE (
  numCommande INT NOT NULL,
  numProduit INT NOT NULL,
  quantite INT NOT NULL,
  PRIMARY KEY (numCommande, numProduit),
  FOREIGN KEY (numCommande) REFERENCES COMMANDE(numCommande),
  FOREIGN KEY (numProduit) REFERENCES PRODUIT(numProduit)
);

INSERT INTO CATEGORIE (codeCategorie, libelleCategorie, remise)
VALUES
  (1, 'Entreprise', 0.05),
  (2, 'Particulier', 0.00),
  (3, 'Association', 0.10);

INSERT INTO CLIENT (numClient, nomClient, prenomClient, adresse, telephone, categorie)
VALUES
  (1, 'DUPONT', 'Jean', '12 rue de la Paix, 75001 Paris', '01 40 00 00 00', 1),
  (2, 'MARTIN', 'Pierre', '34 avenue de la République, 69002 Lyon', '04 72 00 00 00', 2),
  (3, 'LEROY', 'Marie', '56 rue de la Liberté, 13001 Marseille', '04 91 00 00 00', 3);

INSERT INTO PRODUIT (numProduit, designation, prix)
VALUES
  (1, 'Ordinateur portable HP', 999.99),
  (2, 'Imprimante laser Canon', 299.99),
  (3, 'Logiciel de bureautique Microsoft Office', 149.99);

INSERT INTO COMMANDE (numCommande, dateCommande, numClient)
VALUES
  (1, '2022-01-01', 1),
  (2, '2022-01-15', 2),
  (3, '2022-02-01', 3);

INSERT INTO LIGNECOMMANDE (numCommande, numProduit, quantite)
VALUES
  (1, 1, 2),
  (1, 2, 1),
  (2, 3, 3),
  (3, 1, 1);

