<div align="center">
  <a href="#">
  	<img src="https://media.giphy.com/media/elaVskTaObtXEiejn5/giphy-downsized-large.gif" alt="Logo project" height="160" />
  </a>
  <br>
  <br>
  <p>
    <b>IF36-P24-TheWorld-TaylorsVersion</b>
  </p>
  <p>
     <i>This is a school project for a Data Visualization course at UTT, France. It aims to create meaningful visualizations for a dataset of our choice ; here, we chose several datasets consisting of Spotify and Youtube data about popular songs.</i><br><br>
     <i>Ce repo héberge un projet scolaire pour un cours de Visualisation de données à l'UTT. Il vise à créer des visulisations pertinentes pour un dataset de notre choix ; ici, nous avons choisi plusieurs datasets regroupant des données de Spotify et Youtube sur des musiques populaires.</i>
  </p>
  <p>

![Static Badge](https://img.shields.io/badge/language-R-pink)
![GitHub last commit](https://img.shields.io/github/last-commit/IF36-visualisation/projet-if36-p24-the-world-taylor-s-version)


  </p>
</div>

---

**Content**

* [Introduction](##Introduction)
* [Installation](##installation)
* [Données](##données)
* [Analyse](##analyse)
* [Contributeurs](##contributeurs)

## Introduction ✨
L'équipe de projet `The World (Taylor's Version)` est composée de quatres personnes : Marielle CHARON, Kevin HERNANDEZ, Anouchka NEVEU et Amadou ISSAKA AMADOU. Le but de ce projet est de répondre à plusieurs questions sur le thème de la musique et plus précisement sur les platformes Spotify et Youtube grace à la visualisation de données. Le projet sera développé sous R.


## Installation 🐙
* Clonez le repo
```
git clone https://github.com/IF36-visualisation/projet-if36-p24-the-world-taylor-s-version.git
```
* Ouvrez les fichiers R avec l'IDE de votre choix (R-Studio de préférence)

Vous pouvez également analyser les résultats seuls en ouvrant les fichiers `.html` qui rassemblent les visualisations.

## Données 💡
Le dataset utilisé (`Datasetfinal.csv`) est un merge de deux datasets : [Spotify and Youtube](https://www.kaggle.com/datasets/salvatorerastelli/spotify-and-youtube) et [Spotify songs](https://www.kaggle.com/datasets/sujaykapadnis/spotify-songs). Le merge final pèse 6.55 MB et est sous format CSV. Il contient 3668 éléments. La clé qui a servi au merge est l'ID de la musique sur Spotify.

Les deux jeux de données contiennent des données datant de **2023** collectées depuis les API officielles de YouTube et Spotify. On a, notamment, les 10 musiques les plus populaires d'une variété d'artistes.

> Le dataset complet possède 50 features, avant cleaning de celles pertinentes. Après cleaning, on a 33 features.
<br>
On regroupe les features sous ces catégories :
<br><br>

| Catégorie | Features associées |
| --- | --- |
| Informations générales | artist, track_name, album, album_type, duration_ms, channel, description, track_album_release_date, ... |
| Scores musicaux | danceability, energy, key, loudness, acousticness, instrumentalness, liveness, valence, tempo |
| Popularité | views, likes, comments, stream, track_popularity |
| Variables supplémentaires | uri (Spotify ID), url_spotify, url_youtube, licensed, ... |

> Les variables supplémentaires n'expliquent pas la donnée pour l'analyse, mais sont utilisées pour structurer le dataset.
<br>
Les features se répartissent selon plusieurs types : nominales (nom de l'artiste/musique/album, ...), discrètes (tonalité) ou continues (scores musicaux).

## Analyse 🖍
Dans ce projet, nous souhaitons répondre à plusieurs questions et suppositions. D'autres points pourraient encore emerger durant la manipulation des données afin de répondre à ces questions.

* Quels sont les artistes les plus populaires sur YouTube et Spotify ? Et est-ce que on a les même résulats selon la plateforme ?
* Est-ce qu'il y a une corrélation entre la "danceability" et l'énergie d'une chanson ?
* Quelle est la durée moyenne des chansons par artiste ? Est-ce qu'il y a des artistes qui ont des chansons plus longues ou plus courtes que la moyenne ?
* Les chansons plus longues ont-elles une popularité différente ?
> On suppose les chansons longues moins populaires.
* Est-ce que les chansons plus dansantes ont tendance à être plus courtes en durée ?
* Existe-t-il une corrélation entre la "tempo" d'une chanson et sa "danceability" ?
* Y a-t-il une évolution dans la longueur des chansons au fil des albums d'un artiste ?
* Est-ce qu'il existe des liens entre certaines variables et le nombre de streams ?
> On suppose que la "danceability" ou "energy" sont corrélés au nombre de streams.
* Quel genre de musique est le plus populaire sur Spotify/Youtube ?
> On suppose la pop.
* Quelle est la répartition des caractéristiques musicales (tempo, danceability, etc.) dans les chansons les plus populaires ?
* Quels genres sont les plus populaires d'année en année ?

## Contributeurs 👷
<table>
  <tr>
    <td align="center"><a href="https://github.com/phoenixasce"><img src="https://avatars.githubusercontent.com/u/85552199?v=4" width="100px;" alt="Marielle CHARON"/><br /><sub><b>Marielle CHARON</b></sub></a><br /><a href="#" title="Code">💻</a></td>
    <td align="center"><a href="https://github.com/AnnNeveu"><img src="https://avatars.githubusercontent.com/u/90454929?v=4" width="100px;" alt="Anouchka Neveu"/><br /><sub><b>Anouchka Neveu</b></sub></a><br /><a href="#" title="Code">💻</a></td>
    <td align="center"><a href="https://github.com/Sp3cTTTre"><img src="https://avatars.githubusercontent.com/u/161608407?v=4" width="100px;" alt="Kevin HERNANDEZ"/><br /><sub><b>Kevin HERNANDEZ</b></sub></a><br /><a href="#" title="Code">💻</a></td>
    <td align="center"><a href="https://github.com/IsAmadou"><img src="https://avatars.githubusercontent.com/u/77031350?v=4" width="100px;" alt="Amadou ISSAKA AMADOU"/><br /><sub><b>Amadou ISSAKA AMADOU</b></sub></a><br /><a href="#" title="Code">💻</a></td>
  </tr>
</table>


<div align="center">
	<b>
		<a href="https://www.npmjs.com/package/get-good-readme">File generated with get-good-readme module</a>
	</b>
</div>
