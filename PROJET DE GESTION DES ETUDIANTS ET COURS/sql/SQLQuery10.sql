-- Insertion des départements
INSERT INTO Departement (id_departement, nom_departement) VALUE;

-- Insertion des formations
INSERT INTO Formation (id_formation, nom_formation, id_departement) VALUES
(1, 'Licence Informatique', 1),
(2, 'Master Informatique', 1),
(3, 'Licence Mathématiques', 2);

-- Insertion des enseignants
INSERT INTO Enseignant (id_enseignant, nom, prenom, email, id_departement) VALUES
(1, 'Mensah', 'Kossi', 'kossi.mensah@ecole.tg', 1),
(2, 'Adjovi', 'Ama', 'ama.adjovi@ecole.tg', 2),
(3, 'Tchalla', 'Yao', 'yao.tchalla@ecole.tg', 1);

-- Insertion des étudiants
INSERT INTO Etudiant (id_etudiant, nom, prenom, date_naissance, email, id_formation) VALUES
(1, 'Amadou', 'Ali', '2002-03-12', 'ali.amadou@gmail.com', 1),
(2, 'Mensah', 'Jean', '2001-06-20', 'jean.mensah@gmail.com', 1),
(3, 'Sodjinou', 'Paul', '2000-09-15', 'paul.sodjinou@gmail.com', 2),
(4, 'Akakpo', 'Marie', '2002-11-30', 'marie.akakpo@gmail.com', 3);

-- Insertion des cours
INSERT INTO Cours (id_cours, nom_cours, credits, id_enseignant) VALUES
(1, 'Base de Données', 4, 1),
(2, 'Programmation Java', 3, 3),
(3, 'Algèbre', 3, 2),
(4, 'Réseaux Informatiques', 4, 1);

-- Insertion des inscriptions
INSERT INTO Inscription (id_inscription, id_etudiant, id_cours, annee) VALUES
(1, 1, 1, '2025'),
(2, 1, 2, '2025'),
(3, 2, 1, '2025'),
(4, 3, 2, '2025'),
(5, 4, 3, '2025');

-- Insertion des notes
INSERT INTO Note (id_note, id_inscription, note, date_examen) VALUES
(1, 1, 15.5, '2025-06-15'),
(2, 2, 14.0, '2025-06-20'),
(3, 3, 12.5, '2025-06-15'),
(4, 4, 16.0, '2025-06-20'),
(5, 5, 13.0, '2025-06-18');
