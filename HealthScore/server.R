library(shiny)

# Define server logic required to calculate patient health risk score
shinyServer(function(input, output) {
  
  output$patient_score <- renderPrint({
    score <- 0
    if((input$age >=30 && input$age <=50) && (input$enrolled==TRUE)){
      score <- 1
      if(score==1){
        if(input$diagnosed==TRUE){
          score <- score+1
          if(input$prescribed==TRUE){
            score <- score+1
          }
          if(input$followup==TRUE){
            score <- score+1
          }
        }
      }
    }
    score
  })
  
  output$patient_risk_category <- renderPrint({
    score <- 0
    if((input$age >=30 && input$age <=50) && (input$enrolled==TRUE)){
      score <- 1
      if(score==1){
        if(input$diagnosed==TRUE){
          score <- score+1
          if(input$prescribed==TRUE){
            score <- score+1
          }
          if(input$followup==TRUE){
            score <- score+1
          }
        }
      }
    }
    if(score==0){
        "Outlier/Not-Considered"
      }else{
        if(score==1){
          "No-Risk"
        }else{
          if(score==2){
            "High-Risk"
          }else{
            if(score==3){
              "Medium-Risk"
            }else{
              "Low-Risk"
            }
          }
        }
      }
  })

    
})