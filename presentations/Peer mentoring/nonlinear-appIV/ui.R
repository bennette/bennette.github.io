library(shiny)

shinyUI(fluidPage( responsive=FALSE,

  titlePanel("Instance selection"),
  
  fluidRow(
    
    column(4,div(
      numericInput("radius", 
                   label=h5("Adjust data"), 
                   value=2, step=1, min=1 ),align="center"), br()),
    column(4,div(
      selectInput("classifier",
                  label=h5("Select classifier"),
                  choices=list("Naive Bayes","Decision tree", "Logistic regression"),
                  selected="Naive Bayes"), align="center"), br()),
    
    column(4,h5("Instance selection"),
           checkboxInput("checkbox", label = "IS", value = FALSE), br())
    
  ),
  
  ##Want to plot outputs
  fluidRow(
    column(6,
        div(tabsetPanel(
            tabPanel("Train", plotOutput("original")),
            tabPanel("Test", plotOutput("original_prediction"))
          ), align="center")
      ), 
    
    column(6,
           div(tabsetPanel(
             tabPanel("Train", plotOutput("selected")),
             tabPanel("Test", plotOutput("selected_prediction"))
           ), align="center"))
  ) 
))









































