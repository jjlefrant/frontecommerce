# Utiliser l'image Node.js la plus récente
FROM node:latest
#FROM node:21.0.0-alpine

RUN mkdir /app

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier tous les fichiers de votre application dans le conteneur
COPY . /app

# Exposer le port 4200 (port par défaut d'Angular)
EXPOSE 4200


RUN npm install
# Installer Angular CLI de manière globale
RUN npm install -g @angular/cli
# Démarrez l'application Angular lorsqu'un conteneur basé sur cette image est lancé
CMD ng serve --host 0.0.0.0
#CMD ng serve