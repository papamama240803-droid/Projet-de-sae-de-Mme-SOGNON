CREATE DATABASE gestion_etablissement;
USE gestion_etablissement;

CREATE TABLE formation (
id_formation INT AUTO_INCREMENT PRIMARY KEY,
nom_formation VARCHAR(255) NOT NULL,
niveau VARCHAR(50) NOT NULL
);	

CREATE TABLE ENSEIGNANT (
id_enseignant INT AUTO_INCREMENT PRIMARY KEY,
nom VARCHAR(255) NOT NULL,
prenom VARCHAR(255) NOT NULL,
grade VARCHAR(50) NOT NULL,
email VARCHAR(255) NOT NULL
);

CREATE TABLE ETUDIANT (
id_etudiant INT AUTO_INCREMENT PRIMARY KEY,
nom VARCHAR(255) NOT NULL,
prenom VARCHAR(255) NOT NULL,
date_naissance DATE NOT NULL,
email VARCHAR(255) NOT NULL,
telephone VARCHAR(20) NOT NULL
id_formation INT,

FOREIGN KEY (id_formation)
REFERENCES formation(id_formation)
);
CREATE TABLE COURS (
id_cours INT AUTO_INCREMENT PRIMARY KEY,
nom_cours VARCHAR(255) NOT NULL,
coefficient INT,
volume_horaire INT,
id_enseignant INT,
FOREIGN KEY (id_enseignant)
REFERENCES ENSEIGNANT(id_enseignant),

foreign key (id_formation)
references formation(id_formation)
);
CREATE TABLE INSCRIPTION (
    id_inscription INT AUTO_INCREMENT PRIMARY KEY,
    date_inscription DATE,
    id_etudiant INT,
    id_cours INT,
    
    FOREIGN KEY (id_etudiant)
    REFERENCES ETUDIANT(id_etudiant),
    
    FOREIGN KEY (id_cours)
    REFERENCES COURS(id_cours)
);
CREATE TABLE NOTE (
    id_note INT AUTO_INCREMENT PRIMARY KEY,
    note DECIMAL(5,2),
    type_examen VARCHAR(50),
    id_etudiant INT,
    id_cours INT,
    
    FOREIGN KEY (id_etudiant)
    REFERENCES ETUDIANT(id_etudiant),
    
    FOREIGN KEY (id_cours)
    REFERENCES COURS(id_cours)