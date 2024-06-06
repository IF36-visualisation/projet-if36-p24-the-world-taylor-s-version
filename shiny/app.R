# main.R

library(shiny)
library(shinydashboard)
library(DT)
library(dplyr)
library(plotly)


# Charger l'interface utilisateur et le serveur
source("ui.R")
source("server.R")

# Exécuter l'application Shiny
shinyApp(ui = ui, server = server)
