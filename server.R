#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$mymap <- renderLeaflet({
    
  #  # generate bins based on input$bins from ui.R
   # x    <- faithful[, 2] 
    #bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    #hist(x, breaks = bins, col = 'darkgray', border = 'white')
    
    df <- data.frame(lat=runif(10,min=input$latlow,max=input$lathigh),lng=runif(10,min=input$longlow,max=input$longhigh))
    
    df %>%
      leaflet() %>%
      addTiles() %>%
      addCircles(weight=5,radius=5)
    
    
  })
  
})
