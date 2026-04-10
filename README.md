# discourse-search-presentations

Composant de thème Discourse qui ajoute une barre de recherche sur la page d’accueil uniquement.

## Catégories configurées par défaut

- presentation-jeux
- presentation-jeux-a-campagne

Un troisième slug optionnel peut être ajouté dans les réglages du composant.

## Fonctionnement

Le composant s’affiche uniquement sur `/` et redirige vers la recherche Discourse avec le filtre :

`categories:presentation-jeux,presentation-jeux-a-campagne`

## Installation

Dans l’admin Discourse :

`Admin > Customize > Themes > Install > From a git repository`

Puis collez l’URL du dépôt GitHub.

## Réglages disponibles

- `search_category_1`
- `search_category_2`
- `search_category_3`
- `search_placeholder`
- `search_button_label`

## Références

- https://meta.discourse.org/t/structure-of-themes-and-theme-components/60848
- https://meta.discourse.org/t/add-settings-to-your-discourse-theme/82557
- https://meta.discourse.org/t/add-custom-content-that-only-appears-on-your-homepage/131415
- https://meta.discourse.org/t/searching-for-content-effectively/273328