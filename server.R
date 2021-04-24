library(shiny)


shinyServer(function(input,output){
  
  
  data <- reactive({
    file1 <- input$file
    if(is.null(file1)){return()} 
    read.table(file=file1$datapath, sep=input$sep, header = input$header)
    
  })
  
  
  output$filedf <- renderTable({
    if(is.null(data())){return ()}
    input$file
    
  })
  
  
  output$sum <- renderTable({
    if(is.null(data())){return ()}
    summary(data())
    
  })
  
  output$table <- renderTable({
    if(is.null(data())){return ()}
    data()
  })
  
  
  output$text <- renderUI({
    HTML(paste(h3("Logistic Regression model",align = "center",style = "color:blue"),
               strong("  Accuracy : 0.7749/78%",style = "color:green"),
               "<br/>",
               " 95% CI : (0.7155, 0.8271)<br/>", 
               "No Information Rate : 0.6494 <br/>",
               " P-Value [Acc > NIR] : 2.434e-05    <br/> ",
               "  Kappa : 0.4791    <br/>  ",
               " Mcnemar's Test P-Value : 0.0184   <br/>  ",
               " Sensitivity :  0.8867     <br/>",
               " Specificity : 0.5679   <br/>",
               " Pos Pred Value : 0.7917    <br/>",
               " Neg Pred Value : 0.7302  <br/>",
               " Prevalence : 0.6494 <br/>",
               " Detection Rate : 0.5758 <br/>",
               " Detection Prevalence : 0.7273  <br/>",
               " Balanced Accuracy : 0.7273  <br/>",
      
               h3("Decision Tree ", align = "center",style = "color:blue") ,
               strong("Accuracy : 0.7087/71%",style = "color:green"),
               "<br/>",
               " 95% CI : (0.6454, 0.7666)<br/>", 
               "No Information Rate : 0.6522<br/>",
               " P-Value [Acc > NIR] : 0.04036<br/> ",
               "  Kappa : 0.3484 <br/>  ",
               " Mcnemar's Test P-Value : 0.62507 <br/>  ",
               " Sensitivity : 0.7933   <br/>",
               " Specificity : 0.5500 <br/>",
               " Pos Pred Value : 0.7677  <br/>",
               " Neg Pred Value : 0.5867 <br/>",
               " Prevalence : 0.6522 <br/>",
               " Detection Rate : 0.5174<br/>",
               " Detection Prevalence : 0.6739 <br/>",
               " Balanced Accuracy : 0.6717 <br/>",
               h3("Support Vector Machine - svm",align = "center",style = "color:blue"),
               strong("  Accuracy : 0.7696  /77%",style = "color:green"),
               "<br/>",
               " 95% CI : (0.7097, 0.8224)<br/>", 
               "No Information Rate :  0.6522 <br/>",
               " P-Value [Acc > NIR] : 7.748e-05 <br/> ",
               "  Kappa : 0.4521   <br/>  ",
               " Mcnemar's Test P-Value : 0.0009784     <br/>  ",
               " Sensitivity :  0.9067   <br/>",
               " Specificity :  0.5125     <br/>",
               " Pos Pred Value : 0.7771    <br/>",
               " Neg Pred Value : 0.7455  <br/>",
               " Prevalence : 0.6522 <br/>",
               " Detection Rate :  0.5913 <br/>",
               " Detection Prevalence : 0.7609  <br/>",
               " Balanced Accuracy : 0.7096   <br/>",
               
               sep="<br/>"))
  })
})