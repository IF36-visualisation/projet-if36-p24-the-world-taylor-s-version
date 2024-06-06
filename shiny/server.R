
library(shiny)
library(shinydashboard)
library(DT)
library(dplyr)
library(plotly)

# Charger les données à partir du fichier dans le chemin spécifié
data <- read.csv("D:/Documents/Utt/ISI5/IF36/PROJET/projet-if36-p24-the-world-taylor-s-version/data/datasetfinal.csv")

# library import
library(ggplot2)
library(readr)
library(dplyr)
library(forcats)
library(devtools)
library(palettetown)
library(cowplot)
library(stats)
library(ggcorrplot)
library(GGally)
library(tidyr)


data <- data.frame(data)

# clean dataset
data <- data %>%
  select(-c(playlist_name, playlist_id, Url_spotify, Url_youtube, Title, Duration_ms, Danceability, Energy, Key, Loudness, Speechiness, Acousticness, Instrumentalness, Liveness, Valence, Tempo, track_name, track_artist)) %>%   # remove useless features
  na.omit() %>%   # remove incomplete rows
  distinct(Uri, .keep_all = TRUE)   # remove duplicated rows


# add relevant features to dataset
data$total_streams <- data$Stream + data$Views
data <- arrange(data, desc(total_streams))


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


# Définir le serveur
shinyServer(function(input, output) {
  output$barChart <- renderPlotly({
    # Filtrer les musiques en fonction de la variable sélectionnée et du nombre de musiques à afficher
    top_musics <- data %>%
      arrange(desc(.data[[input$selectVariable]])) %>%
      head(input$numMusics)
    
    # Ajouter une colonne pour les valeurs de la variable sélectionnée afin de réorganiser les pistes correctement
    top_musics <- top_musics %>%
      mutate(Track = fct_reorder(Track, .data[[input$selectVariable]]))
    
    # Définir la couleur en fonction de la variable sélectionnée
    color <- if (input$selectVariable == "Views") {
      "#26355D"
    } else if (input$selectVariable == "Likes") {
      "#AF47D2"
    } else if (input$selectVariable == "Comments") {
      "#FF8F00"
    } else if (input$selectVariable == "Stream") {
      "#FFDB00"
    } else {
      "black" # Couleur par défaut si la variable n'est pas reconnue
    }
    
    # Créer le graphique trié par ordre décroissant de la variable sélectionnée avec les axes inversés
    p <- ggplot(top_musics, aes(x = .data[[input$selectVariable]], y = Track)) +
      geom_bar(stat = "identity", fill = color) +
      labs(x = input$selectVariable, y = "Music") +
      ggtitle(paste("Top", input$numMusics, "Musiques par", input$selectVariable)) +
      theme(axis.text.y = element_text(angle = 0, hjust = 1))
    
    ggplotly(p)
  })
  
  
  
  
  selected_correlation <- reactiveVal(NULL)
  
   
  output$correlationMatrix <- renderPlotly({
    # Sélection des variables d'intérêt pour la matrice de corrélation
    data_corr <- data %>%
      select(danceability, energy, loudness, speechiness, acousticness, instrumentalness, liveness, valence, tempo, total_streams)
    
    # Calcul de la matrice de corrélation
    correlation_matrix <- cor(data_corr)
    
    # Création de la heatmap de la matrice de corrélation avec une palette de couleurs de bleu (-1) à rouge (1)
    p <- plot_ly(
      z = correlation_matrix,
      x = colnames(correlation_matrix),
      y = rownames(correlation_matrix),
      type = "heatmap",
      colorscale = list(c(0, "blue"), c(0.5, "white"), c(1, "red")),
      zmin = -1,
      zmax = 1,
      text = round(correlation_matrix, 2),
      hoverinfo = "text"
    ) %>%
      layout(title = "Matrice de corrélation des variables musicales",
             xaxis = list(title = ""),
             yaxis = list(title = ""))
    
    p
  })
  
  observeEvent(event_data("plotly_click"), {
    click_data <- event_data("plotly_click")
    
    if (!is.null(click_data)) {
      x <- click_data$x
      y <- click_data$y
      
      output$selectedCorrelationPlot <- renderPlotly({
        p <- ggplot(data, aes_string(x = x, y = y)) +
          geom_point() +
          geom_smooth(method = "lm", se = FALSE) +
          labs(x = x, y = y) +
          ggtitle(paste("Corrélation entre", x, "et", y))
        
        ggplotly(p)
      })
      
      # Calcul du coefficient de corrélation
      corr_value <- round(cor(data[[x]], data[[y]]), 2)
      
      output$selectedCorrelation <- renderText({
        paste("Coefficient de corrélation entre", x, "et", y, ":", corr_value)
      })
      
      
    }
  })
  
  # Index de la photo actuellement affichée
  current_photo_index <- reactiveVal(1)
  
  # Liste des noms des photos
  photos <- c("taylor.jpg", "taylor2.jpg", "taylor3.jpg","taylor4.jpg","taylor5.jpg")
  
  # Observer pour le bouton de navigation précédent
  observeEvent(input$prevPhoto, {
    current_index <- current_photo_index()
    if (current_index > 1) {
      current_photo_index(current_index - 1)
    }
  })
  
  # Observer pour le bouton de navigation suivant
  observeEvent(input$nextPhoto, {
    current_index <- current_photo_index()
    if (current_index < length(photos)) {
      current_photo_index(current_index + 1)
    }
  })
  
  # Afficher la photo actuelle
  output$currentPhoto <- renderUI({
    current_index <- current_photo_index()
    tags$img(src = photos[current_index], height = "auto", width = "100%")
  })
})
  
