/**check the table**/
select * from "healthcare";

/**Identifying Potential Outliers and Data Inconsistencies**/
select * from "healthcare" where "Age"<0;
select * from "healthcare" where "Billing_Amount" <0;
select * from "healthcare" where ("Discharge_Date"-"Date_of_Admission")<0;



/*Count the number of patients*/
select count(*) as TotalNumberOfPatients from "healthcare";

/*Calculate the average billing amount*/
select avg("Billing_Amount") from "healthcare" ;

/*Count patients by gender*/
select "Gender", count(*) from "healthcare" group by "Gender";

/*List all distinct medical conditions*/
select distinct "Medical_Condition" from "healthcare";

/*Most common blood type among patients*/
select "Blood_Type", count(*) from "healthcare" group by "Blood_Type" order by count(*) DESC;

/**Patients admitted for more than 7 days**/
select "Name", "Date_of_Admission", "Discharge_Date", "Medical_Condition", ("Discharge_Date"-"Date_of_Admission") as LengthofStay from "healthcare" order by LengthofStay desc;

/**Length of stay by admission type**/
select "Admission_Type" , avg("Discharge_Date"-"Date_of_Admission") as LengthofStay 
from "healthcare" group by "Admission_Type" order by LengthofStay desc;


/**Patients with a specific medical condition under a specific doctor**/
select distinct "Name", "Medical_Condition", "Doctor" from "healthcare" where ("Medical_Condition"='Asthma') and ("Doctor" = 'Ryan Collins');

/**Average age of patients by medical condition**/
select "Medical_Condition", avg("Age") as AverageAge from "healthcare" group by  "Medical_Condition";


/**Count Patients at Each Hospital**/
select "hospital", count(*) as NumberofPatients from "healthcare" group by hospital order by NumberofPatients desc;

/**Monthly admissions count**/
select  date_trunc('month', "Date_of_Admission") as Monthly, count(*) as AdmissionCount from "healthcare" group by Monthly order by Monthly; 



