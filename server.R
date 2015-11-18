library(shiny)

shinyServer(
        function(input, output){
                
                text <- reactiveValues(data = 'Make a decision!')
                
                observeEvent(input$yeslive, {
                        text$data <- 'You should continue living there.'
                })
                observeEvent(input$yes, {
                        text$data <- 'My guess is because you have used this app?'
                })
                
                observeEvent(input$no, {
                        text$data <- 'You might consider it after you check out this app.'
                })
                
                output$value <- renderText({text$data})
        }
)