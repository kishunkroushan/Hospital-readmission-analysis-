
1. SELECT ROUND(AVG(readmitted)*100,2) AS readmission_rate
FROM hospital_readmissions;
2. SELECT 
    age,
    ROUND(AVG(readmitted)*100,2) AS readmission_rate
FROM hospital_readmissions
GROUP BY age
ORDER BY readmission_rate DESC;

3.SELECT 
    time_in_hospital,
    ROUND(AVG(readmitted)*100,2) AS readmission_rate
FROM hospital_readmissions
GROUP BY time_in_hospital
ORDER BY time_in_hospital;

4.SELECT 
    n_emergency,
    ROUND(AVG(readmitted)*100,2) AS readmission_rate
FROM hospital_readmissions
GROUP BY n_emergency
ORDER BY readmission_rate DESC;

5.SELECT 
    medical_specialty,
    COUNT(*) AS total_patients,
    ROUND(AVG(readmitted)*100,2) AS readmission_rate
FROM hospital_readmissions
GROUP BY medical_specialty
ORDER BY readmission_rate DESC;

6. ALTER TABLE hospital_readmissions
ADD COLUMN stay_category VARCHAR(20);

UPDATE hospital_readmissions
SET stay_category =
CASE
    WHEN time_in_hospital <= 3 THEN 'Short Stay'
    WHEN time_in_hospital <= 7 THEN 'Medium Stay'
    ELSE 'Long Stay'
END;

SELECT stay_category, COUNT(*)
FROM hospital_readmissions
GROUP BY stay_category;

SELECT 
    stay_category,
    ROUND(AVG(readmitted)*100,2) AS readmission_rate
FROM hospital_readmissions
GROUP BY stay_category
ORDER BY readmission_rate DESC;

7.SELECT 
    CASE 
        WHEN n_medications <= 5 THEN 'Low'
        WHEN n_medications <= 10 THEN 'Medium'
        ELSE 'High'
    END AS medication_group,
    ROUND(AVG(readmitted)*100,2) AS readmission_rate
FROM hospital_readmissions
GROUP BY medication_group
ORDER BY readmission_rate DESC;

SELECT 
    stay_category,
    CASE 
        WHEN n_medications <= 5 THEN 'Low'
        WHEN n_medications <= 10 THEN 'Medium'
        ELSE 'High'
    END AS medication_group,
    ROUND(AVG(readmitted)*100,2) AS readmission_rate
FROM hospital_readmissions
GROUP BY stay_category, medication_group
ORDER BY readmission_rate DESC;


8.SELECT 
    age,
    stay_category,
    ROUND(AVG(readmitted)*100,2) AS readmission_rate
FROM hospital_readmissions
GROUP BY age, stay_category
ORDER BY readmission_rate DESC;

9.SELECT 
    medical_specialty,
    ROUND(AVG(readmitted)*100,2) AS readmission_rate,
    RANK() OVER (ORDER BY AVG(readmitted) DESC) AS risk_rank
FROM hospital_readmissions
GROUP BY medical_specialty;

10.SELECT *
FROM hospital_readmissions
WHERE time_in_hospital > 7
AND n_emergency > 1
AND readmitted = 1;