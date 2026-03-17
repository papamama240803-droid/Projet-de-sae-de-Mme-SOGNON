SELECT Cours.nom_cours, AVG(Note.note) AS moyenne_cours
FROM Note
JOIN Inscription ON Note.id_inscription = Inscription.id_inscription
JOIN Cours ON Inscription.id_cours = Cours.id_cours
GROUP BY Cours.nom_cours;

SELECT Etudiant.nom, Etudiant.prenom,
AVG(Note.note) AS moyenne,
CASE
    WHEN AVG(Note.note) >= 10 THEN 'Validé'
    ELSE 'Échoué'
END AS statut
FROM Note
JOIN Inscription ON Note.id_inscription = Inscription.id_inscription
JOIN Etudiant ON Inscription.id_etudiant = Etudiant.id_etudiant
GROUP BY Etudiant.nom, Etudiant.prenom;

SELECT Cours.nom_cours
FROM Cours
LEFT JOIN Inscription ON Cours.id_cours = Inscription.id_cours
WHERE Inscription.id_cours IS NULL;