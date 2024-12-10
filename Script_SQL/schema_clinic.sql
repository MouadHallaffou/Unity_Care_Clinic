DROP DATABASE IF EXISTS schema_clinic;
CREATE DATABASE schema_clinic;
USE schema_clinic;

CREATE TABLE departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(50),
    location VARCHAR(100)
);

CREATE TABLE doctors (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    specialisation VARCHAR(50),
    phone_number VARCHAR(15),
    email VARCHAR(100),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments (department_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

CREATE TABLE patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gendre VARCHAR(10) NOT NULL CHECK (gendre IN ('male', 'female', 'other')),
    date_of_birth DATE,
    phone_number VARCHAR(15),
    email VARCHAR(100),
    address VARCHAR(255)
);

CREATE TABLE medications (
    medication_id INT PRIMARY KEY AUTO_INCREMENT,
    medication_name VARCHAR(100),
    dosage VARCHAR(50)
);

CREATE TABLE prescription (
    prescription_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    doctor_id INT,
    medication_id INT,
    prescription_date DATE,
    dosage_instructions VARCHAR(255),
    FOREIGN KEY (patient_id) REFERENCES patients (patient_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    FOREIGN KEY (doctor_id) REFERENCES doctors (doctor_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    FOREIGN KEY (medication_id) REFERENCES medications (medication_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

CREATE TABLE staff (
    staff_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    job_title VARCHAR(50),
    phone_number VARCHAR(15),
    email VARCHAR(100),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments (department_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

CREATE TABLE appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    appointment_date DATE,
    appointment_time TIME,
    doctor_id INT,
    patient_id INT,
    reason VARCHAR(255),
    FOREIGN KEY (patient_id) REFERENCES patients (patient_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    FOREIGN KEY (doctor_id) REFERENCES doctors (doctor_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

CREATE TABLE rooms (
    room_id INT PRIMARY KEY AUTO_INCREMENT,
    room_number VARCHAR(10),
    room_type VARCHAR(10) CHECK (room_type IN ('General', 'Private', 'ICU')),
    availability TINYINT(1)
);

CREATE TABLE admissions (
    admission_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    room_id INT,
    admission_date DATE,
    discharge_date DATE,
    FOREIGN KEY (patient_id) REFERENCES patients (patient_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    FOREIGN KEY (room_id) REFERENCES rooms (room_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);
