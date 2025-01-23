# 🎵🔑 Exercice Symfony -> inscription ("Register") et connexion ("Login") en session utilisateur

## 1. Description

Ce projet est un exercice pratique simple de programmation web utilisant le framework PHP **Symfony**.
Il permet à un utilisateur de s'enregistrer en base de données via un formulaire d'inscription (**Register**) et de s'authentifier en *$_SESSION* via un formulaire de connexion (**Login**).
L'application prévoit l'envoi d'un email de confirmation d'inscription : l'outil [Mailhog](https://github.com/mailhog/MailHog/releases/tag/v1.0.1) a été utilisé pour tester la validation d'emails localement.
Les informations de l'utilisateur lors de l'inscription sont enregistrées en base de données **MySQL**, dans le respect des bonnes pratiques de codage comme le **hashage** fort du mot de passe avant enregistrement, prévu par **Symfony**.

---

## 2. Fonctionnalités

- Navigation sommaire entre les différentes **vues** ("Home", "Login", "Register"...) à l'aide d'une **Navbar** sommaire en **template** (```base.html.twig```).

- Fonctions d'inscription, de connexion en *$_SESSION* et de déconnexion, puis redirections vers les **vues** adéquates en fonction des actions.
Ces fonctions sont gérées via des formulaires créés avec Symfony (via les commandes ```symfony console make:registration-form``` pour créer la partie "Register" et ```make:security:form-login``` pour créer la partie "Login").

- Fonction d'envoi d'email de validation lors de l'inscription.

- Les fonctions d'inscription et de validation d'inscription sont retranscrites en base de données.

- Possibilité d'attribuer un ou plusieurs rôles aux utilisateurs, rôles qui leur donnerait accès à des fonctions supplémentaires (ex. "Administrateur", "Modérateur" etc.). Ces rôles sont gérés en base de données grâce au format *JSON* comme le prévoit **Symfony**.

---

## 3. Installation 

1. Clonez ce projet depuis GitHub :
   ```
   bash
   git clone https://github.com/Xylo87/SF_Authentification.git
   cd SF_Authentification
   ```
2. Assurez-vous que PHP est installé sur votre machine en exécutant la commande suivante :
   ```
   bash
   php --version
   ```
   Veiller à utiliser une version 8.2 minimum de PHP, sinon procéder à son téléchargement via [ce lien](https://www.php.net/downloads.php)

3. Installer un logiciel type "Laragon" pour disposer d'un environnement qui permet d'exécuter un script PHP :

- Télécharger Laragon [ici](https://laragon.org/download/)
- Démarrer Laragon
- Enregistrer le "Repo" dans le dossier laragon\www\
- Si le téléchargement d'une nouvelle version de PHP a été nécessaire, veillez suivre les instructions suivantes pour lier PHP et Apache à Laragon : [PHP](https://www.kreaweb.be/laragon-update-php/) / [Apache](https://www.kreaweb.be/laragon-update-apache/)

4. Il faudra installer (dans l'ordre) : 
-- [composer](https://getcomposer.org/download/)
-- [scoop](https://scoop.sh/) avec le Powershell Windows
-- [Symfony CLI](https://symfony.com/download)

5. Démarrer le serveur de Symfony en tâche de fond : 
```
cmd
symphony serve -d
```

6. Pour commencer la navigation, veuillez exécuter la requêtre suivante dans la barre d'URL :
```
https://127.0.0.1:8001/home
```

---

## 4. Bugs connus

Occasionnellement, lors de la redirection vers l'application depuis le lien de validation d'email, un message d'erreur d'authentification (notamment CSRF) peut apparaître.
Si un tel message apparaît, veuillez : 
- déconnecter la *$_SESSION* 
- vérifier la déconnexion en spécifiant la **Route** ```https://127.0.0.1:8001/home``` dans la barre d'URL
- vider le cache de Symfony en tapant la commande ```symfony console cache:clear``` en console

---

## 5. Auteur
Ce projet a été réalisé par Théo Arbogast (aka Xylo87).  
N'hésitez pas à ouvrir une issue ou à me contacter pour toute suggestion ou question.
