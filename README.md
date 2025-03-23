Projet Examen DevOps : Pipeline CI/CD avec GitHub Actions
Ce projet met en place un pipeline CI/CD pour automatiser la construction et le déploiement d'une image Docker sur DockerHub et le pipeline est configuré avec GitHub Actions.

Fonctionnement du pipeline
Objectif
Le pipeline CI/CD a pour objectif de :

Construire une image Docker à partir du fichier Dockerfile.

Pousser l'image Docker sur DockerHub.

Déclencher automatiquement ces étapes à chaque push sur la branche main.

Étapes du pipeline
Checkout du code :

Le pipeline récupère le code source du dépôt GitHub.

Connexion à DockerHub :

Le pipeline se connecte à DockerHub en utilisant les secrets DOCKERHUB_USERNAME et DOCKERHUB_TOKEN.

Construction de l'image Docker :

Le pipeline construit l'image Docker à partir du fichier Dockerfile.

Push de l'image sur DockerHub :

Le pipeline pousse l'image Docker sur DockerHub avec un tag spécifique (latest).
Récupération de l'image depuis DockerHub
Une fois l'image Docker poussée sur DockerHub, vous pouvez la récupérer et l'exécuter sur n'importe quelle machine disposant de Docker.

Étape 1 : Télécharger l'image Docker
docker pull awatalla1/simple-http-server:latest
Étape 2 : Exécuter l'image Docker
docker run -p 8000:8000 votre_nom_utilisateur/simple-http-server:latest
Accédez à l'application dans un navigateur :
http://localhost:8000
