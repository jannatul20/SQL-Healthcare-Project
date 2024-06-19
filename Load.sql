COPY Patients (
    PatientName,age,gender, Blood_Type, Medical_Condition,Date_of_Admission,
    doctor, hospital, Insurance_Provider, Billing_Amount, Room_Number, Admission_Type, Discharge_Date,
    medication,Test_Results
)
FROM 'C:/path/to/your/healthcare_data.csv'
DELIMITER ','
CSV HEADER;