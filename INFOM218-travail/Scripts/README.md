# Scripts

Ce répertoire contient les scripts utilisés pour l'analyse, l'extraction et le traitement des données de la base de données NewsBlur.

## Contenu

### Python

- `getCountQueriesSqlInspect.py` : Script pour récupérer le nombre de requêtes par type interceptées par SqlInspect. Un fichier au format json doit être passé en **ligne de commande**.

- `makePlot.py` : Script pour réaliser les plots des requêtes par type et par table. Un fichier au format json doit être passé en **ligne de commande**.

- `Myutils.py` : Fichiers contenant des fonctions utilitaires pour les autres scripts.

### JSON

- `NewsBlur-queries.json` : requêtes interceptées par SqlInspect (Travail de rétro-ingénierie).

- `queries.json` : requêtes interceptées par SqlInspect cumulées aux requêtes additionnelles et celles de l'IDE (Travail de rétro-ingénierie).

- `NewsBlur-6-9-2012-queries.json` : requêtes interceptées par SqlInspect du 6 septembre 2012 (Historique)

- `NewsBlur-24-5-2017-queries.json` : requêtes interceptées par SqlInspect du 24 mai 2017 (Historique).

- `NewsBlur-5-9-2023-queries.json` : requêtes interceptées par SqlInspect du 5 juillet 2023 (Historique).

- `NewsBlur-22-12-2025-queries.json` : requêtes interceptées par SqlInspect du 22 décembre 2025, dernier commit à ce jour (Historique).
