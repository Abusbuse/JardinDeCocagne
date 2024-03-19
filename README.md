# sae5-app

## Comment me lancer ?

Voir \src\sae5-jdc\readme.md pour l'installation de Symfony uniquement.
Sinon build le Docker normalement.

## API
L'API est accessible à la route /api/records/{params}


{params} contenant en premier lieu la table à laquelle nous souhaitons accéder.


### Exemple avec une structure

Pour lister toutes les structures
- GET /api/records/structure

Pour créer une structure
- PUT /api/records/structure

Pour obtenir les informations d'une structure d'ID 1
- GET /api/records/structure/1

Pour mettre à jour les informations d'une structure d'ID 1
- PUT /api/records/structure/1

avec les informations à modifier en corps (par exemple, {"nom": "Un nouveau nom"})

Pour supprimer une structure d'ID 1
- DELETE /api/records/structure/1