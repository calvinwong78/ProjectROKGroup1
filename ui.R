library(shiny)
shinyUI(fluidPage(
  headerPanel("Diabetes"),
  
  sidebarLayout(
    sidebarPanel(
      fileInput("file","Upload the file", accept = ".csv"), 
      h6("Default max. file size is 5MB"),
      hr(),
      h5("Select the read.table parameters below"),
      checkboxInput(inputId = 'header', label = 'Header', value = FALSE),
      
      br(),
      radioButtons(inputId = 'sep', label = 'Separator', choices = c(Comma=',',Semicolon=';',Tab='\t', Space=''), selected = ','),
   
      
    ),
    mainPanel(
      tabsetPanel(tabPanel("About file", tableOutput("filedf")),
                  tabPanel("Data", tableOutput("table")),
                  tabPanel("Summary", tableOutput("sum")),
                  tabPanel("Prediction", tableOutput("text"),
                           h2("Logistic Regression model", align = "center"),
                           tags$img(src='LRM.png'),
                           h2("decision Tree", align = "center"),
                          tags$img(src='RplotDecision.png'),
                          h2("accuracy comparison between models", align = "center"),
                          tags$img(src='comparesv2.png'),
                          )
                 
                  ),
     
      
  
    )
    
  )
))