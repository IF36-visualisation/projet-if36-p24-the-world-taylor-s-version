--
title: "Readme"
author: "Marielle CHARON"
output: html_document
---

# Introduction

Le but de ce projet est de répondre à plusieurs questions sur le thème de la musique et plus précisement sur les platformes Spotify et Youtube grace à la visualisation de données. Le projet sera effectué sur R.

## Données

Le dataset orginal, *Spotify and Youtube* est composé de 28 variables et est disponible sur kaggle : https://www.kaggle.com/datasets/salvatorerastelli/spotify-and-youtube .
Le dataset fait 30.78 MB et est sous format CSV.
Nous avons choisi ce jeu de donnée car il contient beaucoup d'informations que ce soit par son nombre de variables ou par son nombre d'éléments.


## Plan D'Analyse

Comme expliqué, dans ce projet nous allons répondre à plusieurs questions et suppositions.

* Questions : 
  + Quels sont les artistes les plus populaires sur YouTube et Spotify ? Et est-ce que on a les même résulats selon la plateforme ?
  + Est-ce qu'il y a une corrélation entre la "danceability" et l'énergie d'une chanson ?
  + Quelle est la durée moyenne des chansons par artiste ? Est-ce qu'il y a des artistes qui ont des chansons plus longues ou plus courtes que la moyenne ?
  + Est-ce que les chansons plus dansantes ont tendance à être plus courtes en durée ?
  + Existe-t-il une corrélation entre la "tempo" d'une chanson et son "danceability" ?
  + Y a-t-il une évolution dans la longueur des chansons au fil des albums d'un artiste ?
  + Est-ce qu'il existe des liens entre certaines variables et le nombre de stream ?
  
* Suppositions : 
  + Le nombre de vues et de like sur Youtube sont correlée.
  + Il y a une corrélation entre la popularité d'une musique sur Spotify (mesurée par le nombre d'écoutes) et sa popularité sur YouTube (mesurée par le nombre de vues et de like).

  
* Comparaisons : 
  + Comparer le nombre de view sur Youtube et le nombre de Stream sur Spotify afin de determiner quelle platforme a le plus d'impact auprès des utilisateur selon l'artiste.
  + Comparer la durée moyenne des chansons entre différents albums par artiste.
  
Il serait également interressant d'analyser si le genre ou la langue à un impact sur la popularité d'une musique ou d'un artiste. Toutes les informations ne sont pas présentes dans le dataset original, il faut donc effectuer un merge avec d'autres dataset afin de lier les informations.