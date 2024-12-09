# 🏥 Unity Care Clinic - Database Management System

Ce projet vise à concevoir une base de données robuste et performante pour **Unity Care Clinic**, répondant aux besoins spécifiques de la gestion hospitalière.

---

## 🌟 **Contexte du Projet**

L'objectif est de créer une base de données efficace pour assurer une gestion optimale des informations liées aux départements, médecins, patients, admissions, rendez-vous, et plus encore. Le système doit garantir :  
- Fiabilité  
- Sécurité  
- Évolutivité  
- Optimisation des performances  

---

## 📋 **Description Fonctionnelle**

La base de données est conçue pour :  
- Gérer les données des départements, médecins, patients, chambres, admissions, rendez-vous, médicaments, prescriptions, et personnel administratif.  
- Offrir une qualité de données optimale et des performances accrues.

---

## 🛠️ **Tables Principales**

Les tables suivantes seront incluses (selon le schéma fourni) :  
- `departments`  
- `doctors`  
- `patients`  
- `rooms`  
- `admissions`  
- `appointments`  
- `medications`  
- `prescriptions`  
- `staff`  

---

## 📝 **Exercices Pratiques**

### 1️⃣ **CRUD Operations**  
- **Insérer un nouveau patient** : Ajouter "Alex Johnson", né le 15 juillet 1990, sexe masculin, téléphone : 1234567890.

### 2️⃣ **Requêtes de sélection**  
- Récupérer tous les départements avec leurs emplacements.

### 3️⃣ **Trier les données**  
- Trier les patients par date de naissance dans l'ordre croissant.

### 4️⃣ **Filtrage des données uniques**  
- Récupérer tous les sexes des patients sans doublons.

### 5️⃣ **Limiter les résultats**  
- Obtenir les 3 premiers médecins.

### 6️⃣ **Conditions de filtrage**  
- Patients nés après 2000.  
- Médecins des départements "Cardiology" et "Neurology".  
- Admissions entre le 1er et le 7 décembre 2024.

### 7️⃣ **Expressions conditionnelles**  
- Ajouter une colonne catégorisant les patients en "Enfant", "Adulte", ou "Senior".

### 8️⃣ **Fonctions d'agrégation**  
- Nombre total de rendez-vous.  
- Nombre de médecins par département.  
- Âge moyen des patients.  
- Dernier rendez-vous enregistré.  
- Total des admissions par chambre.

### 9️⃣ **Contraintes et jointures**  
- Patients sans e-mail.  
- Liste des rendez-vous avec noms des médecins et patients.

### 🔟 **Manipulation des données**  
- Supprimer les rendez-vous avant 2024.  
- Modifier le nom du département "Oncology" en "Cancer Treatment".

### 🔢 **Groupement et filtrage avancé**  
- Genres ayant au moins deux patients enregistrés.  
- Créer une vue listant toutes les admissions actives.

---

## 🛡️ **User Stories**

En tant que responsable de la base de données hospitalière :  
- Je conçois un schéma relationnel efficace pour gérer les données.  
- J'écris des scripts SQL pour la création et manipulation de la base de données.  
- Je documente les relations entre les entités avec des diagrammes UML.  
- Je planifie des sauvegardes automatiques pour prévenir la perte de données.  
- Je garantis l'évolutivité de la base pour la croissance future de l'hôpital.

---

## 💡 **Bonnes Pratiques et Recommandations**

### 🚀 **Optimisation des performances**  
- Utiliser des index sur les colonnes fréquemment requêtées.  
- Optimiser les requêtes de recherche.

### ✅ **Qualité des données**  
- Appliquer des contraintes d’intégrité (ex. : `UNIQUE` pour les e-mails, `CHECK` pour les types de données).

### 🔧 **Maintenance**  
- Tester régulièrement les performances sous différentes charges.

### 🔒 **Sécurité**  
- Crypter les données sensibles.  
- Contrôler les accès via des rôles utilisateurs.

---

## 📂 **Structure des Fichiers**

- `schema.sql` : Script de création des tables.  
- `data.sql` : Script d'insertion des données.  
- `queries.sql` : Exercices pratiques SQL.  
- `README.md` : Documentation du projet.  

---

## 📜 **Auteur**  

Projet réalisé par **Mouad Hallaffou**.  
