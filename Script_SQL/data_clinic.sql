USE schema_clinic;

-- Table Departments :
INSERT INTO departments (department_id, department_name, location) 
VALUES 
(1, 'Cardiology', 'Building A, Floor 3'),
(2, 'Neurology', 'Building B, Floor 2'),
(3, 'Orthopedics', 'Building A, Floor 1'),
(4, 'Pediatrics', 'Building C, Floor 4'),
(5, 'Radiology', 'Building B, Floor 1'),
(6, 'Emergency', 'Building D, Ground Floor'),
(7, 'Oncology', 'Building C, Floor 2'),
(8, 'Dermatology', 'Building A, Floor 2'),
(9, 'Gynecology', 'Building C, Floor 3'),
(10, 'Psychiatry', 'Building B, Floor 4'),
(11, 'Gastroenterology', 'Building A, Floor 4'),
(12, 'Endocrinology', 'Building B, Floor 3'),
(13, 'Urology', 'Building D, Floor 1'),
(14, 'Pulmonology', 'Building C, Floor 1'),
(15, 'Nephrology', 'Building B, Floor 5'),
(16, 'Hematology', 'Building D, Floor 2'),
(17, 'Rheumatology', 'Building A, Floor 5'),
(18, 'Ophthalmology', 'Building B, Floor 6'),
(19, 'ENT', 'Building C, Ground Floor'),
(20, 'General Surgery', 'Building D, Floor 3');

-- Table Doctors :
INSERT INTO doctors (doctor_id, first_name, last_name, specialisation, phone_number, email, department_id) 
VALUES 
(1, 'Khalid', 'Aziz', 'Radiology', '0678634285', 'khalidaziz@gmail.com', 5),
(2, 'Samira', 'Bouhafs', 'Cardiology', '0612345678', 'samira.bouhafs@gmail.com', 1),
(3, 'Ahmed', 'Bakkar', 'Neurology', '0623456789', 'ahmed.bakkar@gmail.com', 2),
(4, 'Laila', 'Fikri', 'Orthopedics', '0634567890', 'laila.fikri@gmail.com', 3),
(5, 'Omar', 'Haddadi', 'Pediatrics', '0645678901', 'omar.haddadi@gmail.com', 4),
(6, 'Fatima', 'Nassiri', 'Emergency', '0656789012', 'fatima.nassiri@gmail.com', 6),
(7, 'Noureddine', 'El Alami', 'Oncology', '0667890123', 'noureddine.elalami@gmail.com', 7),
(8, 'Imane', 'Bensaid', 'Dermatology', '0678901234', 'imane.bensaid@gmail.com', 8),
(9, 'Said', 'Kabbaj', 'Gynecology', '0689012345', 'said.kabbaj@gmail.com', 9),
(10, 'Amina', 'Chafik', 'Psychiatry', '0690123456', 'amina.chafik@gmail.com', 10),
(11, 'Hassan', 'Ouahid', 'Gastroenterology', '0701234567', 'hassan.ouahid@gmail.com', 11),
(12, 'Yasmine', 'Ouazani', 'Endocrinology', '0712345678', 'yasmine.ouazani@gmail.com', 12),
(13, 'Ismail', 'Jabri', 'Urology', '0723456789', 'ismail.jabri@gmail.com', 13),
(14, 'Sara', 'Ben Salah', 'Pulmonology', '0734567890', 'sara.bensalah@gmail.com', 14),
(15, 'Rachid', 'Tazi', 'Nephrology', '0745678901', 'rachid.tazi@gmail.com', 15),
(16, 'Naima', 'Rami', 'Hematology', '0756789012', 'naima.rami@gmail.com', 16),
(17, 'Mohamed', 'Essam', 'Rheumatology', '0767890123', 'mohamed.essam@gmail.com', 17),
(18, 'Latifa', 'Belkadi', 'Ophthalmology', '0778901234', 'latifa.belkadi@gmail.com', 18),
(19, 'Karim', 'Fadili', 'ENT', '0789012345', 'karim.fadili@gmail.com', 19),
(20, 'Salma', 'Moufid', 'General Surgery', '0790123456', 'salma.moufid@gmail.com', 20);

-- Table Patients :
INSERT INTO patients (first_name, last_name, gendre, date_of_birth, phone_number, email, address) 
VALUES 
('Ali', 'Moulay', 'male', '1985-04-12', '0612345678', 'ali.moulay@gmail.com', '123 Main St'),
('Sara', 'Khadiri', 'female', '2019-07-24', '0623456789', 'samira.khadiri@gmail.com', '45 Avenue des Fleurs'),
('Omar', 'El Yazid', 'male', '1980-11-03', '0634567890', 'omar.elyazid@gmail.com', '67 Rue des Palmiers'),
('Fatima', 'Nouari', 'female', '1995-03-19', '0645678901', 'fatima.nouari@gmail.com', '12 Boulevard Hassan II'),
('Youssef', 'Tazi', 'male', '1978-08-14', '0656789012', 'youssef.tazi@gmail.com', '34 Rue Mohammed V'),
('Nadia', 'Chami', 'female', '2012-01-25', '0667890123', 'nadia.chami@gmail.com', '78 Boulevard Zerktouni'),
('Hassan', 'Bennani', 'male', '2001-06-10', '0678901234', 'hassan.bennani@gmail.com', '23 Rue El Fida'),
('Leila', 'Amrani', 'female', '1983-12-20', '0689012345', 'leila.amrani@gmail.com', '56 Boulevard Rachidi'),
('Karim', 'El Idrissi', 'male', '1985-09-15', '0690123456', 'karim.elidrissi@gmail.com', '89 Rue Moulay Ismail'),
('Salma', 'Zahidi', 'female', '1993-05-05', '0701234567', 'salma.zahidi@gmail.com', '100 Avenue Oqba'),
('Imane', 'Toumi', 'female', '1988-02-12', '0712345678', 'imane.toumi@gmail.com', '12 Rue Ibn Sina'),
('Mehdi', 'Kettani', 'male', '2000-07-30', '0723456789', 'mehdi.kettani@gmail.com', '34 Rue Chouhada'),
('Amina', 'Hajji', 'female', '1984-10-21', '0734567890', 'amina.hajji@gmail.com', '23 Rue Tarfaya'),
('Rachid', 'Boukili', 'male', '1981-03-10', '0745678901', 'rachid.boukili@gmail.com', '45 Boulevard Yacoub El Mansour'),
('Sanaa', 'El Harrak', 'female', '1991-11-25', '0756789012', 'sanaa.elharrak@gmail.com', '78 Avenue Lalla Yacout'),
('Khalid', 'Mahfoud', 'male', '2010-08-18', '0767890123', 'khalid.mahfoud@gmail.com', '90 Rue Farah'),
('Meryem', 'Chakib', 'female', '1994-04-07', '0778901234', 'meryem.chakib@gmail.com', '13 Rue Ibn Zohr'),
('Anas', 'Alaoui', 'male', '1990-12-01', '0789012345', 'anas.alaoui@gmail.com', '56 Rue Abderrahmane'),
('Rim', 'Lahlou', 'female', '1989-06-22', '0790123456', 'rim.lahlou@gmail.com', '23 Boulevard Mansour'),
('Yassine', 'Bennani', 'male', '2009-09-11', '0801234567', 'yassine.bennani@gmail.com', '89 Avenue El Qods');

-- Table Medications :
INSERT INTO medications (medication_name, dosage) 
VALUES 
('Paracetamol', '500mg'),
('Amoxicillin', '250mg'),
('Ibuprofen', '400mg'),
('Metformin', '850mg'),
('Omeprazole', '20mg'),
('Atorvastatin', '10mg'),
('Ciprofloxacin', '500mg'),
('Aspirin', '81mg'),
('Losartan', '50mg'),
('Simvastatin', '20mg'),
('Lisinopril', '10mg'),
('Metoprolol', '100mg'),
('Hydrochlorothiazide', '25mg'),
('Levothyroxine', '75mcg'),
('Warfarin', '5mg'),
('Gabapentin', '300mg'),
('Zolpidem', '10mg'),
('Clopidogrel', '75mg'),
('Amlodipine', '5mg'),
('Furosemide', '40mg');

-- Table Staff :
INSERT INTO staff (first_name, last_name, job_title, phone_number, email, department_id) 
VALUES 
('Ali', 'Fekir', 'Nurse', '0678901234', 'ali.fekir@clinic.com', 1),
('Khadija', 'Benomar', 'Technician', '0689012345', 'khadija.benomar@clinic.com', 2),
('Mohamed', 'Azizi', 'Receptionist', '0690123456', 'mohamed.azizi@clinic.com', 3),
('Fatima', 'Haddad', 'Lab Technician', '0701234567', 'fatima.haddad@clinic.com', 4),
('Rachid', 'Hamidi', 'Manager', '0712345678', 'rachid.hamidi@clinic.com', 5),
('Salma', 'Jawad', 'Nurse', '0723456789', 'salma.jawad@clinic.com', 6),
('Omar', 'Lahlou', 'Janitor', '0734567890', 'omar.lahlou@clinic.com', 7),
('Imane', 'Zarhouni', 'Secretary', '0745678901', 'imane.zarhouni@clinic.com', 8),
('Youssef', 'Alaoui', 'Technician', '0756789012', 'youssef.alaoui@clinic.com', 9),
('Nadia', 'Fassi', 'Pharmacist', '0767890123', 'nadia.fassi@clinic.com', 10),
('Samir', 'Chami', 'Nurse', '0778901234', 'samir.chami@clinic.com', 11),
('Latifa', 'Mansouri', 'Accountant', '0789012345', 'latifa.mansouri@clinic.com', 12),
('Karim', 'Jabri', 'Technician', '0790123456', 'karim.jabri@clinic.com', 13),
('Sara', 'Bensalah', 'Janitor', '0801234567', 'sara.bensalah@clinic.com', 14),
('Rachid', 'Tazi', 'Security', '0812345678', 'rachid.tazi@clinic.com', 15),
('Naima', 'Rami', 'Assistant', '0823456789', 'naima.rami@clinic.com', 16),
('Mohamed', 'Essam', 'Driver', '0834567890', 'mohamed.essam@clinic.com', 17),
('Latifa', 'Belkadi', 'Chef', '0845678901', 'latifa.belkadi@clinic.com', 18),
('Karim', 'Fadili', 'Technician', '0856789012', 'karim.fadili@clinic.com', 19),
('Salma', 'Moufid', 'Secretary', '0867890123', 'salma.moufid@clinic.com', 20);

-- Table Rooms :
INSERT INTO rooms (room_number, room_type, availability) 
VALUES 
('101', 'General', 1),
('102', 'Private', 1),
('103', 'ICU', 0),
('104', 'General', 1),
('105', 'Private', 0),
('106', 'ICU', 1),
('107', 'General', 1),
('108', 'Private', 1),
('109', 'ICU', 0),
('110', 'General', 1),
('111', 'Private', 1),
('112', 'ICU', 0),
('113', 'General', 1),
('114', 'Private', 0),
('115', 'ICU', 1),
('116', 'General', 1),
('117', 'Private', 1),
('118', 'ICU', 0),
('119', 'General', 1),
('120', 'Private', 1);


-- Table prescription :
INSERT INTO prescription (patient_id, doctor_id, medication_id, prescription_date, dosage_instructions) 
VALUES
(1, 1, 1, '2024-01-10', 'Take one tablet every 6 hours.'),
(2, 2, 2, '2024-01-15', 'Take one capsule before meals.'),
(3, 3, 3, '2024-01-20', 'Take one tablet in the morning.'),
(4, 4, 4, '2024-01-25', 'Take one tablet twice daily.'),
(5, 5, 5, '2024-02-01', 'Take one tablet at bedtime.'),
(6, 6, 6, '2024-02-05', 'Take one tablet every 8 hours.'),
(7, 7, 7, '2024-02-10', 'Take one tablet before breakfast.'),
(8, 8, 8, '2024-02-15', 'Take one tablet daily.'),
(9, 9, 9, '2024-02-20', 'Take one tablet with meals.'),
(10, 10, 10, '2024-02-25', 'Take one tablet in the evening.'),
(11, 1, 2, '2024-03-01', 'Take one drop daily.'),
(12, 2, 3, '2024-03-05', 'Take two capsules before meals.'),
(13, 3, 4, '2024-03-10', 'Take one tablet after dinner.'),
(14, 4, 5, '2024-03-15', 'Apply twice daily.'),
(15, 5, 6, '2024-03-20', 'Take one teaspoon daily.'),
(16, 6, 7, '2024-03-25', 'Take two tablets every 12 hours.'),
(17, 7, 8, '2024-03-30', 'Take one injection weekly.'),
(18, 8, 9, '2024-04-05', 'Take one tablet every 4 hours.'),
(19, 9, 10, '2024-04-10', 'Apply once at bedtime.'),
(20, 10, 1, '2024-04-15', 'Take two capsules in the morning.');

-- Table appointments :
INSERT INTO appointments (appointment_date, appointment_time, doctor_id, patient_id, reason)
VALUES
('2024-01-10', '10:00:00', 1, 1, 'Routine check-up'),
('2024-01-11', '11:30:00', 2, 2, 'Follow-up for medication'),
('2024-01-12', '14:00:00', 3, 3, 'Consultation for headache'),
('2024-01-13', '09:30:00', 4, 4, 'Fever and body pain'),
('2024-01-14', '16:00:00', 5, 5, 'Diabetes management'),
('2024-01-15', '13:00:00', 6, 6, 'Routine blood test'),
('2024-01-16', '08:00:00', 7, 7, 'Chronic back pain'),
('2024-01-17', '15:00:00', 8, 8, 'Allergy treatment'),
('2024-01-18', '12:00:00', 9, 9, 'High blood pressure'),
('2024-01-19', '10:30:00', 10, 10, 'Skin rash'),
('2024-01-20', '14:00:00', 1, 11, 'Routine vaccination'),
('2024-01-21', '09:00:00', 2, 12, 'General health screening'),
('2024-01-22', '10:45:00', 3, 13, 'Physical therapy consultation'),
('2024-01-23', '11:15:00', 4, 14, 'Post-surgery follow-up'),
('2024-01-24', '16:30:00', 5, 15, 'Chest pain evaluation'),
('2024-01-25', '08:45:00', 6, 16, 'Skin allergy consultation'),
('2024-01-26', '15:15:00', 7, 17, 'Routine dental check-up'),
('2024-01-27', '12:00:00', 8, 18, 'Eye irritation'),
('2024-01-28', '14:30:00', 9, 19, 'Respiratory issue assessment'),
('2024-01-29', '10:30:00', 10, 20, 'Ear infection check-up');

-- Table admissions :
INSERT INTO admissions (patient_id, room_id, admission_date, discharge_date)
VALUES
(1, 1, '2024-01-01', '2024-01-05'),
(2, 2, '2024-01-06', '2024-01-10'),
(3, 3, '2024-01-11', '2024-01-15'),
(4, 4, '2024-01-16', '2024-01-20'),
(5, 5, '2024-01-21', '2024-01-25'),
(6, 6, '2024-01-26', '2024-01-30'),
(7, 7, '2024-02-01', '2024-02-05'),
(8, 8, '2024-02-06', '2024-02-10'),
(9, 9, '2024-02-11', '2024-02-15'),
(10, 10, '2024-02-16', '2024-02-20'),
(11, 11, '2024-02-21', '2024-02-25'),
(12, 12, '2024-02-26', '2024-03-02'),
(13, 13, '2024-03-03', '2024-03-07'),
(14, 14, '2024-03-08', '2024-03-12'),
(15, 15, '2024-03-13', '2024-03-17'),
(16, 16, '2024-03-18', '2024-03-22'),
(17, 17, '2024-03-23', '2024-03-27'),
(18, 18, '2024-03-28', '2024-04-01'),
(19, 19, '2024-04-02', '2024-04-06'),
(20, 20, '2024-04-07', '2024-04-11');
