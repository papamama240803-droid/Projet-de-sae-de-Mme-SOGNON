SELECT Etudiant.nom, Etudiant.prenom
FROM Inscription
JOIN Etudiant ON Inscription.id_etudiant = Etudiant.id_etudiant
WHERE Inscription.id_cours = 1;

SELECT Cours.nom_cours
FROM Inscription
JOIN Cours ON Inscription.id_cours = Cours.id_cours
WHERE Inscription.id_etudiant = 1;

SELECT Etudiant.nom, AVG(Note.note) AS moyenne
FROM Note
JOIN Inscription ON Note.id_inscription = Inscription.id_inscription
JOIN Etudiant ON Inscription.id_etudiant = Etudiant.id_etudiant
GROUP BY Etudiant.nom;

SELECT Cours.nom_cours, AVG(Note.note) AS moyenne
FROM Note
JOIN Inscription ON Note.id_inscription = Inscription.id_inscription
JOIN Cours ON Inscription.id_cours = Cours.id_cours
GROUP BY Cours.nom_cours;