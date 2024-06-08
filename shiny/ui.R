library(shiny)
library(shinydashboard)
library(shinyWidgets)
library(DT)
library(dplyr)
library(plotly)

# Charger les données à partir du fichier dans le chemin spécifié
data <- read.csv("D:/Documents/Utt/ISI5/IF36/PROJET/projet-if36-p24-the-world-taylor-s-version/data/datasetfinal.csv")

# clean dataset
data <- data %>%
  select(-c(playlist_name, playlist_id, Url_spotify, Url_youtube, Title, Duration_ms, track_name, track_artist)) %>%   # remove useless features
  na.omit() %>%   # remove incomplete rows
  distinct(Uri, .keep_all = TRUE)   # remove duplicated rows

# add relevant features to dataset
data$total_streams <- data$Stream + data$Views
data <- arrange(data, desc(total_streams))


# Define the user interface
ui <- dashboardPage(
  skin = "blue",
  dashboardHeader(title = "Music Dashboard"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Top 40 musiques", tabName = "graph", icon = icon("chart-column")),
      menuItem("Matrice de corrélation", tabName = "correlation", icon = icon("chart-simple")),
      menuItem("Galerie Photo", tabName = "gallery", icon = icon("camera"))
    )
    ),

  dashboardBody(
    
    tabItems(
      # premier onglet
      tabItem(tabName = "graph",
              fluidRow(
                column(3,
                       selectInput("selectVariable", "Choisir la variable pour le graphique",
                                   choices = c("Views", "Likes", "Comments", "Stream"),
                                   selected = "Views"),
                       sliderInput("numMusics", "Nombre de musiques à afficher", 
                                   min = 1, max = 40, value = 30),
                       tags$img(src = "taylor0.jpg", height = "auto", width = "100%") # Insérer l'image ici
                ),
                column(9,
                       box(
                         title = "Top Musiques",
                         status = "info",
                         solidHeader = TRUE,
                         collapsible = TRUE,
                         width = 12,
                         height = NULL,
                         plotlyOutput("barChart", height = 500)
                       )
                )
              )
      ),
             
      # deuxieme Onglet 
      tabItem(tabName = "correlation",
              fluidRow(
                box(
                  title = "Matrice de corrélation clicable",
                  status = "info",
                  solidHeader = TRUE,
                  collapsible = TRUE,
                  width = 6,
                  plotlyOutput("correlationMatrix")
                ),
                box(
                  title = "Graphique de corrélation sélectionné",
                  status = "info",
                  solidHeader = TRUE,
                  collapsible = TRUE,
                  width = 6,
                  plotlyOutput("selectedCorrelationPlot")
                ), 
                box(
                  title = "Coefficient de corrélation sélectionné",
                  status = "info",
                  solidHeader = TRUE,
                  collapsible = TRUE,
                  width = 12,
                  verbatimTextOutput("selectedCorrelation")
                )
              )
      ),
      # Nouvel onglet Galerie Photo
      tabItem(tabName = "gallery",
              fluidRow(
                column(2, align = "center",
                       actionButton("prevPhoto", icon("chevron-left"), style = "color: #ffffff; background-color: #005C53; border-color: #005C53;")
                ),
                column(8,
                       box(
                         title = "Photos Taylor Swift",
                         status = "success",
                         solidHeader = TRUE,
                         collapsible = TRUE,
                         width = 12,
                         uiOutput("currentPhoto")
                       )
                ),
                column(2, align = "center",
                       actionButton("nextPhoto", icon("chevron-right"), style = "color: #ffffff; background-color: #005C53; border-color: #005C53;")
                )
              )
      )
    )
  )
)