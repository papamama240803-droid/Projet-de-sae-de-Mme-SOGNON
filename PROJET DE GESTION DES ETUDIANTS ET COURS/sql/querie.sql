SELECT * 
FROM Etudiant;

SELECT Etudiant.nom, Etudiant.prenom, Formation.nom_formation
FROM Etudiant
JOIN Formation ON Etudiant.id_formation = Formation.id_formation;

SELECT Etudiant.nom, Etudiant.prenom, Formation.nom_formation
FROM Etudiant
JOIN Formation ON Etudiant.id_formation = Formation.id_formation;

SELECT Etudiant.nom, Etudiant.prenom, Cours.nom_cours
FROM Inscription
JOIN Etudiant ON Inscription.id_etudiant = Etudiant.id_etudiant
JOIN Cours ON Inscription.id_cours = Cours.id_cours;

SELECT Etudiant.nom, Etudiant.prenom, AVG(Note.note) AS moyenne
FROM Note
JOIN Inscription ON Note.id_inscription = Inscription.id_inscription
JOIN Etudiant ON Inscription.id_etudiant = Etudiant.id_etudiant
GROUP BY Etudiant.nom, Etudiant.prenom;

SELECT Etudiant.nom, Etudiant.prenom, Cours.nom_cours, Note.note
FROM Note
JOIN Inscription ON Note.id_inscription = Inscription.id_inscription
JOIN Etudiant ON Inscription.id_etudiant = Etudiant.id_etudiant
JOIN Cours ON Inscription.id_cours = Cours.id_cours;