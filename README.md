# Eshop Flutter Project

## Description
Ce projet est une application mobile d'e-commerce développée avec Flutter, utilisant Firebase pour l'authentification et le stockage des données. L'application permet aux utilisateurs de se connecter, de visualiser des vêtements, de les ajouter à leur panier, et de gérer leur profil. De plus, un modèle de classification d'images basé sur un réseau de neurones convolutifs (CNN) a été intégré pour aider les utilisateurs à ajouter de nouveaux vêtements en fonction de leur catégorie (pantalon, chemise, chaussures, etc.).

## Fonctionnalités

### User Stories

#### US#1 : [MVP] Interface de login
- Connexion avec un email et un mot de passe.
- Vérification des informations en base de données.
- Message d'erreur si les informations sont incorrectes.

#### US#2 : [MVP] Liste des vêtements
- Visualisation d'une liste déroulante de vêtements avec image, titre, taille et prix.
- Accès au détail de chaque vêtement en cliquant sur un item de la liste.

#### US#3 : [MVP] Détail d'un vêtement
- Affichage des détails d'un vêtement : image, titre, catégorie, taille, marque, prix.
- Boutons "Retour" et "Ajouter au panier".

#### US#4 : [MVP] Panier
- Affichage des vêtements ajoutés au panier avec un total général.
- Option pour supprimer des articles du panier et mise à jour du total.

#### US#5 : [MVP] Profil utilisateur
- Affichage et modification des informations de profil : email, mot de passe (obfusqué), anniversaire, adresse, code postal, et ville.
- Possibilité de se déconnecter et revenir à la page de login.

#### US#6 : Ajouter un nouveau vêtement
- Ajout d'un nouveau vêtement via un formulaire avec des informations comme l'image, le titre, la catégorie, la taille, la marque et le prix.
- Le modèle de classification TFLite aide à prédire la catégorie du vêtement (pantalon, chemise, chaussures, etc.) lors du téléchargement de l'image.

## Technologies Utilisées
- **Flutter** : Framework pour développer l'application mobile.
- **Firebase** : Pour l'authentification et la gestion des données utilisateurs.
- **TensorFlow Lite** : Modèle CNN pour la classification d'images des vêtements.
- **Google Colab** : Pour l'entraînement du modèle CNN avec un dataset Kaggle.
- **VS Code** : IDE utilisé pour le développement Flutter.

## Modèle CNN
Le modèle de classification d'images a été entraîné sur un dataset Kaggle et exporté en format TFLite pour être intégré à l'application Flutter. Le modèle peut prédire les catégories suivantes :
- Pants
- Shirt
- Shoes
- Shorts
- Sneakers
- T-shirt

## Compte de Développement
Pour tester l'authentification, utilisez les informations suivantes :
- **Email** : prof@unica.com
- **Mot de passe** : 123456

## Installation
1. Clonez le repository :
   ```bash
   git clone https://github.com/Ayahdf/EShop.git
