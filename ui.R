#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(leaflet)
# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel(""),
  
  
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("longlow",
                   "Longitude left limit:",
                   min = -180,
                   max = 0,
                   value = 0),
       sliderInput("longhigh",
                   "Longitude right limit:",
                   min = 0,
                   max = 180,
                   value = 0),
       
       
       sliderInput("latlow",
                   "Latitude below equator:",
                   min = -90,
                   max = 0,
                   value = 0),
       
       sliderInput("lathigh",
                   "Latitude above equator:",
                   min = 0,
                   max = 90,
                   value = 0)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      h3("This is my app!\n"),
      h4("You can set limits of latitudes and longitudes using the sliders to show 10 random places\n\n"),
      h4("Thank you for using the app!"),
      leafletOutput("mymap")
    )
  )
))
