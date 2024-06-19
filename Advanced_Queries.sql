/**Query 1: Patients admitted for more than 7 days**/
select "Name", "Date_of_Admission", "Discharge_Date", "Medical_Condition", ("Discharge_Date"-"Date_of_Admission") as LengthofStay from "Patients" order by LengthofStay desc;


select "Name", "age", "Medical_Condition", ("Discharge_Date"-"Date_of_Admission") as LengthofStay from "Patients" order by LengthofStay desc;

select "Name", "Date_of_Admission", "Discharge_Date"  from "Patients" where ("Discharge_Date"-"Date_of_Admission")>7;

/**Query 2: Patients with a specific medical condition under a specific doctor**/
select distinct "Name", "Medical_Condition", "doctor" from "Patients" where ("Medical_Condition"='Asthma') and ("doctor" = 'Ryan Collins');

/**Query 3: Average age of patients by medical condition**/
select "Medical_Condition", avg("age") as AverageAge from "Patients" group by  "Medical_Condition";


/**Query 4: Count Patients at Each Hospital**/
select "hospital", count(*) as NumberofPatients from "Patients" group by hospital order by NumberofPatients desc;

/**Query 5: Monthly admissions count**/
select  date_trunc('month', "Date_of_Admission") as Monthly, count(*) as AdmissionCount from "Patients" group by Monthly order by Monthly; 

