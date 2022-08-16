# Modèle de recommandation du prix de vente de l'immobilier.

 Dans ce projet, nous avons mise en place un modèle de recommandation du prix de vente de l'immobilier en France.
 
 Les données utilisées : [Demandes de valeurs foncières](https://www.data.gouv.fr/fr/datasets/5c4ae55a634f4117716d5656/)
 
 Source de données : [Data.gouv](https://www.data.gouv.fr/fr/).
 
 
###  Dictionnaire de données 

<img alt="MYSQL" width="80%" src="./Dictionnaire de données.png" style="padding-right:10px;" />


### Modelisation de la bases de données

Nous avons utilisé **Power Architect** pour modeliser la base de données avec le language UML.

Pour plus d'infomation sur UML, veuillez cliquer le lien suivant : [Wikipedia](https://fr.wikipedia.org/wiki/UML_(informatique))

<img alt="MySQL" width="80%" src="./Power.png" style="padding-right:10px;" />


### Préparation des données

Nous avons utilisé **Excel** et **Power Query** pour la préparation des données.
Dans cette partie, nous sommes passé par différents process, à savoir :

1. choix des variables en accord au dictionnaire de donnée,

2. traitement des données manquantes ainsi que des doublons, 

3. vérication puis validation du typage des colonnes,

4. création puis fusion des tables en accord au schéma relationnel,

5. exportation des tables en fichier CSV


###  Implémentation du modèle

Nous avons utilisé **MySQL** pour implémenter le modèle.

1. création des tables avec le code généré par PowerArchitect,

2. transfert des fichiers csv préparés en amont dans le SGBD,

3. lancement de 9 requètes 


### Outils  et concepts utilisés

- **Excel** et **PowerQuery** pour la préparation des données
- **Power Architect** et **Lucidchart** pour le database design : le schéma relatinnel
- **MySQL** pour l'implémentation et la gestion du modèle.


