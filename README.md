---
title: "README"
authors: "Marielle CHARON, Kevin HERNANDEZ, Anouchka NEVEU, Amadou ISSAKA AMADOU"
output: html_document
---

# Introduction

L'équipe de projet **The world Taylor's Version** est composé de quatres personnes : Marielle CHARON, Kevin HERNANDEZ, Anouchka NEVEU et Amadou ISSAKA AMADOU. Le but de ce projet est de répondre à plusieurs questions sur le thème de la musique et plus précisement sur les platformes Spotify et Youtube grace à la visualisation de données. Le projet sera effectué sur R.

## Données

<div style="text-align: justify">

Le dataset utilisé, **Datasetfinal.csv**, est un merge de deux datasets : *Spotify and Youtube* et *Spotify songs*. Il fait 6.55 MB et est sous format CSV. Il contient 3668 éléments.
La clé qui a servit au merge est l'ID de la musique sur Spotify. Il possède pour l'instant 50 variables mais on pourra trier par la suite les informations qui nous intéresse et celle que nous avons en double. Nous avons des variables nominales comme le nom de l'artiste, la musique, l'album, le genre mais également des variables discrètes comme la tonalité (sous forme de chiffre). Nous avons aussi des variables continues comme la durée, la 'danceability', l'energie, l'intensité	le 'speechiness' ou l'accoustique.



Le dataset *Spotify and Youtube* est composé de 26 variables et est disponible sur kaggle : https://www.kaggle.com/datasets/salvatorerastelli/spotify-and-youtube.
Le dataset fait 30.78 MB et est sous format CSV.
Nous avons choisi ce jeu de donnée car il contient beaucoup d'informations sur les musiques comme l'artiste, l'album, le nombre de stream, vues et likes mais aussi d'autres informations plus typiques comme la "danceability", l'energie, l'intensité ou "Speechiness". Ce jeu de données contient également beaucoup d'éléments ce qui permet d'avoir une meilleure représentation.

Le dataset *Spotify songs* est composé de 23 variables et est disponible sur kaggle : https://www.kaggle.com/datasets/sujaykapadnis/spotify-songs.
Le dataset fait 7.97 MB et est sous format CSV. Il contient plusieurs informations communes par rapport au premier dataset comme l'artiste, l'album, la danceability, l'energie et l'intensité mais il a également des  informations complémentaires comme la popularité d'une musique, le genre, le sous genre, et la date de l'album.



</div>

## Plan D'Analyse

Dans ce projet nous allons répondre à plusieurs questions et suppositions. D'autres points pourraient encore emerger durant la manipulation des données afin de répondre à ces questions.

* Questions : 
  + Quels sont les artistes les plus populaires sur YouTube et Spotify ? Et est-ce que on a les même résulats selon la plateforme ?
  + Est-ce qu'il y a une corrélation entre la "danceability" et l'énergie d'une chanson ?
  + Quelle est la durée moyenne des chansons par artiste ? Est-ce qu'il y a des artistes qui ont des chansons plus longues ou plus courtes que la moyenne ?
  + Est-ce que les chansons plus dansantes ont tendance à être plus courtes en durée ?
  + Existe-t-il une corrélation entre la "tempo" d'une chanson et son "danceability" ?
  + Y a-t-il une évolution dans la longueur des chansons au fil des albums d'un artiste ?
  + Est-ce qu'il existe des liens entre certaines variables et le nombre de stream ?
  + Quel genre musique est le plus populaire sur Spotify/Youtube ?
  + Quelle est la répartition des caractéristiques musicales (tempo, danceability, etc.) dans les chansons les plus populaires ?
  
* Suppositions : 
  + Le nombre de vues et de like sur Youtube sont correlée.
  + Il y a une corrélation entre la popularité d'une musique sur Spotify (mesurée par le nombre d'écoutes) et sa popularité sur YouTube (mesurée par le nombre de vues et de like).
  + 

  
* Comparaisons : 
  + Comparer le nombre de view sur Youtube et le nombre de Stream sur Spotify afin de determiner quelle platforme a le plus d'impact auprès des utilisateur selon l'artiste.
  + Comparer la durée moyenne des chansons entre différents albums par artiste.
  + Comment évolue la popularité d'un artiste au fil du temps 
  