library(shiny)

shinyUI(
  
  pageWithSidebar(
    headerPanel('Calculator'),
    sidebarPanel(
## Numeric and select widgets for the inputs      
      numericInput("Number1","First Number",0),
      selectInput("Action","Mathematical symbol",c("+","-","*","/", "^")),	
      numericInput("Number2","Second Number",0),
      submitButton('Calculate')
    ),
    mainPanel(
      tabsetPanel(
      
      tabPanel("Result",h2("Result"),
      h4(textOutput("Result1"))),
      tabPanel("Documentation", h2("Documentation"),
               "This is a simple calculator application. The user enters 2 numbers and 
               one mathematical symbol, presses the Calculate button and the result 
               appears in the Result tab.")
      
    ))))