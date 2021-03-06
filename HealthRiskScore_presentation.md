Presentation on Health Risk Score Calculation project
========================================================
author: Ishan Gajurel
date: October 15, 2017
autosize: true

Introduction
========================================================

- This project is developed for the final project of Coursera course on Developing Data Products
- The project is aimed at calculating the health risk score and risk category of a given user(patient) based on the criteria s/he satisfies for the health measure. 
- Github codes for the project can be found at https://github.com/igajurel/ShinyApp_for_Coursera

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


Application - Backend Calculation
========================================================

Assuming the user inputs age of 35, is enrolled in current year, diagnosed with blood pressure, not medicated, but has followed-up, the application backend computes the score as 3 and the risk category as Medium Risk' -




```r
#Based on the input, the patients score is '
patient_score
```

```
[1] 3
```

```r
#And Patient is identified as '
patient_risk_category
```

```
[1] "Medium-Risk"
```
