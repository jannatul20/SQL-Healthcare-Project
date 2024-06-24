/*Patient Demographics and Admission Trends*/
select ("Age",10) as age_group,count(*) AS total_patients, avg("Billing_Amount") as average_billing_amount, 
sum("Billing_Amount") as total_hospital_revenue from "healthcare" group by age_group 
order by total_hospital_revenue desc;


/*Admission and Discharge Analysis by Month*/
select date_trunc('month', "Date_of_Admission") as admission_month,count(*) as total_admissions, 
avg("Billing_Amount") AS average_billing_amount
from "healthcare" GROUP BY admission_month order by admission_month;


/*Top Medical Conditions and Associated Costs*/
select "Medical_Condition", count(*) as total_cases,sum("Billing_Amount") as total_cost 
from "healthcare" GROUP BY "Medical_Condition" order by total_cost desc; 

/*Identifying potential costly treatment*/
select "Medical_Condition","Medication", avg("Billing_Amount") AS average_billing_amount
from "healthcare" GROUP BY "Medical_Condition","Medication" order by average_billing_amount desc;

/*Analysis of Insurance Coverage and Billing Amount*/
select "Insurance_Provider", count(*) as total_patients, avg("Billing_Amount") as average_billing_amount 
from "healthcare" GROUP BY "Insurance_Provider" order by average_billing_amount desc; 


/*Correlating Admission Type and Room Assignment*/
select "Admission_Type", "Room_Number", count(*) as total_assignments 
from "healthcare" GROUP BY "Admission_Type", "Room_Number" order by total_assignments;

/*Correlating Admission Type, medication and test results*/
select "Admission_Type", "Test_Results", count(*) as total_assignments 
from "healthcare" GROUP BY "Admission_Type", "Test_Results" order by total_assignments;

/*Correlating medication and test results*/
select "Medical_Condition" , "Medication" 
from "healthcare" GROUP BY "Medical_Condition" , "Medication";


/*Insights by hospital*/
SELECT "Hospital",COUNT(*) AS TotalPatients, AVG("Billing_Amount") AS AverageBilling,
COUNT(DISTINCT "Medical_Condition") AS UniqueMedicalConditions FROM "healthcare"
GROUP BY "Hospital" ORDER BY TotalPatients DESC;

/*Analyzing Hospital Efficiency and Bed Occupancy*/
select "Hospital", COUNT(*) AS total_admissions,
SUM(CASE WHEN ("Discharge_Date"-"Date_of_Admission") < 3 THEN 1 ELSE 0 END) AS short_stays,
SUM(CASE WHEN ("Discharge_Date"-"Date_of_Admission") >= 7 THEN 1 ELSE 0 END) AS long_stays
FROM "healthcare" GROUP BY "Hospital" ORDER BY total_admissions DESC;


