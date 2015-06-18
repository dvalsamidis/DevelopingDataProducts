
x<-0
shinyServer(
 function(input,output){
  x<- reactive({ if (input$Action == "+") {  input$Number1 + input$Number2}
   else if (input$Action == "-") { input$Number1 - input$Number2}
   else if (input$Action == "*"){ input$Number1*input$Number2}
   else if (input$Action == "/") {  input$Number1/input$Number2}
   else if (input$Action == "^") {  input$Number1^input$Number2}
   else { 0 }
  })
   
  
   output$Result1 <- renderText({ 
     paste(input$Number1, " ", input$Action," ", input$Number2, " = ",x())
   })
   
   
 }
)