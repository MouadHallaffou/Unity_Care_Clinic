USE schema_clinic;
-- 1 Insérez un nouveau patient nommé "Alex Johnson", né le 15 juillet 1990, de sexe masculin, avec le numéro de téléphone "1234567890".
INSERT INTO patients (first_name, last_name, gendre, date_of_birth, phone_number, email, address) 
VALUES 
('Alex', 'Johnson', 'male', '1990-07-15', '1234567890', 'null', 'null');

-- 2 Récupérez tous les départements avec leurs emplacements.
SELECT department_name, location FROM departments;

--3 ORDER BY Clause : Trier les patients par date de naissance Listez tous les patients, triés par date de naissance dans l'ordre croissant.
SELECT first_name, last_name, date_of_birth FROM patients
ORDER BY date_of_birth DESC; -- trier par age croisante 
--------------------------------------------------------
SELECT first_name, last_name, date_of_birth FROM patients
ORDER BY date_of_birth ASC; --trier par date naissance croissante 

--4  Filtrer les patients uniques par sexe (DISTINCT) Récupérez tous les sexes des patients enregistrés, sans doublons.
SELECT  DISTINCT gendre FROM patients;

--5 LIMIT Clause : Obtenir les 3 premiers médecins Récupérez les trois premiers médecins dans la table doctors. 
SELECT * FROM doctors 
LIMIT 3;

--6. WHERE Clause : Patients nés après 2000 Récupérez les informations des patients nés après l'année 2000. 
SELECT * FROM patients 
WHERE date_of_birth >'2000-01-01';

--7. Logical Operators : Médecins dans des départements spécifiques Récupérez les médecins des départements "Cardiology" et "Neurology". 
SELECT * FROM doctors
WHERE specialisation IN('Cardiology','Neurology');

--8. Special Operators : Vérifier des plages de dates Listez les admissions entre le 1er janvier et le 7 janvier 2024. 
SELECT * FROM admissions
WHERE admission_date BETWEEN '2024-01-01' AND '2024-01-07';

--9. Conditional Expressions : Nommer les catégories d'âge des patients Ajoutez une colonne catégorisant les patients en "Enfant", "Adulte", ou "Senior" selon leur âge. 
SELECT first_name, last_name,
case 
when date_of_birth > '2007-01-01' then 'enfant'
when date_of_birth < '2007-01-01' AND date_of_birth > '1980-01-01' then 'adult'
ELSE 'senior'
END AS category
FROM patients;

--10. Aggregate Functions : Nombre total de rendez-vous Comptez le nombre total de rendez-vous enregistrés.  
SELECT COUNT(*) AS Total_rendez_vous FROM patients;

--11. COUNT avec GROUP BY : Nombre de médecins par département Comptez le nombre de médecins dans chaque département.
SELECT specialisation, COUNT(specialisation) AS Total_doctors from doctors
GROUP BY specialisation;

--12. AVG : Âge moyen des patients Calculez l'âge moyen des patients.
SELECT 
AVG(YEAR (CURDATE()) - YEAR (date_of_birth)) AS averge_age 
FROM  patients;

--13. MAX : Dernier rendez-vous Trouvez la date et l'heure du dernier rendez-vous enregistré.
SELECT appointment_date AS dernieredate,
appointment_time AS dernieretime
FROM appointments

ORDER BY 
appointment_date DESC,
appointment_time DESC
LIMIT 1;

--14. SUM : Total des admissions par chambre Calculez le total des admissions pour chaque chambre.
SELECT room_id, COUNT(*) AS total_admission
from admissions 
GROUP BY room_id;

--15. Constraints : Vérifier les patients sans e-mail Récupérez tous les patients dont le champ email est vide.
SELECT * FROM patients 
WHERE email = 'null';

--16. Jointure : Liste des rendez-vous avec noms des médecins et patients Récupérez les rendez-vous avec les noms des médecins et des patients.
SELECT 
patients.last_name AS patients_last_name, 
patients.first_name AS patientsfirst_name, 
date_of_birth,
doctors.first_name AS doctor_first_name,
doctors.last_name AS doctor_last_name,
specialisation,
dosage_instructions FROM patients
JOIN doctors 
ON  patients.patient_id = doctors.doctor_id
JOIN prescription
ON patients.patient_id = prescription.patient_id;

--17. DELETE : Supprimer les rendez-vous avant 2024 Supprimez tous les rendez-vous programmés avant 2024.
delete from prescription
WHERE prescription_date > '2024-12-31';

--18. UPDATE : Modifier un département Changez le nom du département "Oncology" en "Cancer Treatment".
UPDATE departments
SET department_name = 'Cancer Treatment'
WHERE department_name = 'Oncology';

--19. HAVING Clause : Patients par sexe avec au moins 2 entrées Listez les genres ayant au moins deux patients.
SELECT gendre, COUNT(*) AS total_gender 
FROM patients
GROUP BY gendre
HAVING total_gender > 2;

--20. Créer une vue : Admissions actives Créez une vue listant toutes les admissions en cours
CREATE VIEW AdmissionsView AS 
SELECT admission_id, patient_id, room_id, admission_date, discharge_date
FROM admissions;

--Bonus 1 : Patients et leurs médecins traitants Récupérez les noms des patients et les noms de leurs médecins traitants à partir des tables patients, admissions, et doctors.
SELECT 
    patients.first_name AS first_name_patient,
    patients.last_name AS last_name_patient,
    doctors.first_name AS doc_first_name,
    doctors.last_name AS doc_last_name,
    admissions.admission_id AS admission
FROM patients
JOIN prescription
ON prescription.patient_id = patients.patient_id
JOIN doctors
ON doctors.doctor_id = prescription.doctor_id
JOIN admissions
ON admissions.patient_id = patients.patient_id;

--Bonus 2 : Liste des rendez-vous par département Récupérez la liste des rendez-vous avec les départements associés.
SELECT appointment_date, appointment_time, department_name,location FROM appointments
JOIN patients
ON patients.patient_id = appointments.patient_id
JOIN doctors
ON doctors.doctor_id = appointments.doctor_id
JOIN departments
ON doctors.department_id = departments.department_id;

--Bonus 3 : Médicaments prescrits par médecin Listez les médicaments prescrits par chaque médecin.


--Bonus 4 : Admissions et leurs chambres associées Récupérez les informations des admissions et des chambres où les patients sont placés.


--Bonus 5 : Statistiques des patients par département Comptez le nombre de patients associés à chaque département via leurs admissions.
