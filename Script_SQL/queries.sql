-- 1 Insérez un nouveau patient nommé "Alex Johnson", né le 15 juillet 1990, de sexe masculin, avec le numéro de téléphone "1234567890".
USE schema_clinic;
INSERT INTO patients (first_name, last_name, gendre, date_of_birth, phone_number, email, address) 
VALUES 
('Alex', 'Johnson', 'male', '1990-07-15', '1234567890', 'null', 'null');

-- 2 Récupérez tous les départements avec leurs emplacements.
USE schema_clinic;
SELECT department_name, location FROM departments;

--3 ORDER BY Clause : Trier les patients par date de naissance Listez tous les patients, triés par date de naissance dans l'ordre croissant.
USE schema_clinic;
SELECT first_name, last_name, date_of_birth FROM patients
ORDER BY date_of_birth DESC; -- trier par age croisante 

USE schema_clinic;
SELECT first_name, last_name, date_of_birth FROM patients
ORDER BY date_of_birth DESC; --trier par date naissance croissante 

--4  Filtrer les patients uniques par sexe (DISTINCT) Récupérez tous les sexes des patients enregistrés, sans doublons.
USE schema_clinic;
SELECT  DISTINCT gendre FROM patients;

--5 LIMIT Clause : Obtenir les 3 premiers médecins Récupérez les trois premiers médecins dans la table doctors.
USE schema_clinic; 
SELECT * FROM doctors 
LIMIT 3;

--6. WHERE Clause : Patients nés après 2000 Récupérez les informations des patients nés après l'année 2000.
USE schema_clinic; 
SELECT * FROM patients 
WHERE date_of_birth > '2000-01-01'

--7. Logical Operators : Médecins dans des départements spécifiques Récupérez les médecins des départements "Cardiology" et "Neurology".
USE schema_clinic; 
SELECT * FROM doctors
WHERE specialisation IN('Cardiology','Neurology');

--8. Special Operators : Vérifier des plages de dates Listez les admissions entre le 1er janvier et le 7 janvier 2024.
USE schema_clinic; 
SELECT * FROM admissions
WHERE admission_date BETWEEN '2024-01-01' AND '2024-01-07';

--9. Conditional Expressions : Nommer les catégories d'âge des patients Ajoutez une colonne catégorisant les patients en "Enfant", "Adulte", ou "Senior" selon leur âge.
USE schema_clinic; 
SELECT first_name, last_name,
case 
when date_of_birth > '2007-01-01' then 'enfant'
when date_of_birth < '2007-01-01' AND date_of_birth > '1980-01-01' then 'adult'
ELSE 'senior'
END AS category
FROM patients;

--10. Aggregate Functions : Nombre total de rendez-vous Comptez le nombre total de rendez-vous enregistrés. 
USE schema_clinic; 
SELECT COUNT(*) AS Total_rendez_vous FROM patients;

--11. COUNT avec GROUP BY : Nombre de médecins par département Comptez le nombre de médecins dans chaque département.

--12. AVG : Âge moyen des patients Calculez l'âge moyen des patients.

--13. MAX : Dernier rendez-vous Trouvez la date et l'heure du dernier rendez-vous enregistré.

--14. SUM : Total des admissions par chambre Calculez le total des admissions pour chaque chambre.

--15. Constraints : Vérifier les patients sans e-mail Récupérez tous les patients dont le champ email est vide.

--16. Jointure : Liste des rendez-vous avec noms des médecins et patients Récupérez les rendez-vous avec les noms des médecins et des patients.

--17. DELETE : Supprimer les rendez-vous avant 2024 Supprimez tous les rendez-vous programmés avant 2024.

--18. UPDATE : Modifier un département Changez le nom du département "Oncology" en "Cancer Treatment".

--19. HAVING Clause : Patients par sexe avec au moins 2 entrées Listez les genres ayant au moins deux patients.

--20. Créer une vue : Admissions actives Créez une vue listant toutes les admissions en cours