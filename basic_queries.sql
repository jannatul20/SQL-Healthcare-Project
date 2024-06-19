/**Query 1: check the table**/
select * from "Patients";

/*Query 2: Count the number of patients*/
select count(*) as TotalNumberOfPatients from "Patients";

/*Query 3: Calculate the average billing amount*/
select avg("Billing_Amount") from "Patients" ;

/*Query 4: Count patients by gender*/
select Gender, count(*) from "Patients" group by gender ;

/*Query 5: List all distinct medical conditions*/
select distinct "Medical_Condition" from "Patients";

/*Query 6: Most common blood type among patients*/
select "Blood_Type", count(*) from "Patients" group by "Blood_Type" order by count(*) DESC;







