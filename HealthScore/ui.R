library(shiny)

# Define UI for user to input health and demographic details; and Print the health risk score calculated in server
fluidPage(
  titlePanel("Health Risk Score Calculator"),
  
  sidebarLayout(
    sidebarPanel(
      numericInput("age","What is your Age?",30),
      checkboxInput("enrolled","Are you enrolled in any health-care insurance plan for 2017?",TRUE),
      checkboxInput("diagnosed","Were you diagnosed with high blood pressure (>140/90)?",FALSE),
      checkboxInput("prescribed","Were you prescribed with any blood pressure medication?",FALSE),
      checkboxInput("followup","Did you follow-up with the health-care provider within 30 days of diagnosis?",FALSE)
    ),
    mainPanel(
      strong("Measure Definition-"),
      br(),
      p('This measure identifies if any patient who is between 30-50 years of age and enrolled in any health plan during the current year (Jan 1 - Dec 31), is either diagnosed with blood pressure or is prescribed with a medication and who follows up with the doctor within 30 days of the diagnosis or prescription date.'),
      p('The application checks if the user(patient) meets the criteria defined in the measure definition; and then calculates the risk score and identifies the category of risk s/he falls upon.'),
      br(),
      strong('User Guide- Please fill questionnaire below'),
      br(),
      tags$ul(
        tags$li("1- What is your Age?"), 
        tags$li("2- Are you enrolled in any health-care insurance plan for 2017?"),
        tags$li("3- Were you diagnosed with high blood pressure (>140/90)?"),
        tags$li("4- Were you prescribed with any blood pressure medication?"),
        tags$li("5- Did you follow-up with the health-care provider within 30 days of diagnosis?")
      ),
      br(),
      p('Based on the input, the patients score is '), strong(verbatimTextOutput("patient_score")),
      p('And Patient is identified as '), strong(verbatimTextOutput("patient_risk_category")),
      br(),
      strong('Server Calculation Details'),
      br(),
      tags$ul(
        tags$li("1- If user is between 30-50 years and if enrolled in 2017 year, Score 1 is added to the user."), 
        tags$li("2- If score>0, then following steps are performed; Else calculation stops."),
        tags$li("3- If user has been diagnosed, Score 1 is added to the user"),
        tags$li("4- If user has been prescribed a medication, Score 1 is added to user profile."),
        tags$li("5- If user followed-up within 30 days of diagnosis, Score 1 is added to user profile."),
        tags$li("6- User is categorized in Risk score as follows -"),
        tags$li("6.1- Score 0  = Outlier/Not-Considered"),
        tags$li("6.2- Score 1  = No-Risk"),
        tags$li("6.3- Score 2  = High-Risk"),
        tags$li("6.4- Score 3  = Medium-Risk"),
        tags$li("6.5- Score 4  = Low-Risk")
      )
     
    )
  )
  
)