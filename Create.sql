CREATE DATABASE healthcare;
CREATE TABLE Patients (
    PatientName VARCHAR(50),
    age INT(4),
    gender VARCHAR(50),
    Blood_Type VARCHAR(3),
    Medical_Condition TEXT,
    Date_of_Admission DATE,
    doctor VARCHAR(255),
    hospital VARCHAR(255),
    Insurance_Provider VARCHAR(255),
    Billing_Amount DECIMAL(10, 2),
    Room_Number VARCHAR(50),
    Admission_Type VARCHAR(50),
    Discharge_Date DATE,
    medication TEXT,
    Test_Results TEXT
);
