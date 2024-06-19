
/*Summary report with key statistics*/
select count(*) as TotalNumberOfPatients, avg("age") as AverageAge, count(distinct "Medical_Condition") as UniqueMedicalCondition, 
avg("Billing_Amount") as AverageBilling, MAX("Billing_Amount") AS MaxBilling,
    MIN("Billing_Amount") AS MinBilling from "Patients";

/*Insights by hospital*/
SELECT 
    "hospital",
    COUNT(*) AS TotalPatients,
    AVG("Billing_Amount") AS AverageBilling,
    COUNT(DISTINCT "Medical_Condition") AS UniqueMedicalConditions
FROM "Patients"
GROUP BY "hospital"
ORDER BY TotalPatients DESC;