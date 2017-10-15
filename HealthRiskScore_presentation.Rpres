Presentation on Health Risk Score Calculation project
========================================================
author: Ishan Gajurel
date: October 15, 2017
autosize: true

Introduction
========================================================

- This project is developed for the final project of Coursera course on Developing Data Products
- The project is aimed at calculating the health risk score of a given user(patient) based on the criteria s/he satisfies for the health measure. 
- The application identifies the category of risk s/he falls upon based on the score.

Measure Definition:
This measure identifies if any patient who is between 30-50 years of age and enrolled in any health plan during the current year (Jan 1 - Dec 31), is either diagnosed with blood pressure or is prescribed with a medication and who follows up with the doctor within 30 days of the diagnosis or prescription date.

User Guide - 
========================================================

User needs to fill following questionnaire in the application-

- 1) What is your Age?
- 2) Are you enrolled in any health-care insurance plan for 2017?
- 3) Were you diagnosed with high blood pressure (>140/90)?
- 4) Were you prescribed with any blood pressure medication?
- 5) Did you follow-up with the health-care provider within 30 days of diagnosis?


Server Calculation Details
========================================================

- If user is between 30-50 years and if enrolled in 2017 year, Score 1 is added to the user.
- If score>0, then following steps are performed; Else calculation stops.
- If user has been diagnosed, Score 1 is added to the user.
- If user has been prescribed a medication, Score 1 is added to user profile.
- If user followed-up within 30 days of diagnosis, Score 1 is added to user profile.
- User is categorized in Risk score as follows -
- Score 0  = Outlier/Not-Considered ; Score 1  = No-Risk ; Score 2  = High-Risk ; Score 3  = Medium-Risk ; Score 4  = Low-Risk


Application Components
========================================================
- age: (numericInput) - any numeric input value
- enrolled: (checkboxInput) - flag input value of enrollment
- diagnosed: (checkboxInput) - flag input value of diagnosis
- prescribed: (checkboxInput) - flag input value of prescription
- followup: (checkboxInput) - flag input value of follow-up
- patient_score: (verbatimTextOutput) - text output of patient numeric score between 0-4
- patient_risk_category: (verbatimTextOutput) - text output of patient health risk category (Outlier/Not-Considered ; No-Risk ; High-Risk ; Medium-Risk ; Low-Risk)
