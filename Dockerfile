# Utilise l'image officielle de Node.js version 20 comme image de base
FROM node:20

# Définit le répertoire de travail dans le conteneur à /usr/src/app
WORKDIR /usr/src/app

# Copie le fichier package.json du système hôte vers le répertoire de travail dans le conteneur
COPY package*.json ./

# Exécute la commande npm install pour installer toutes les dépendances listées dans package.json
RUN npm install

# Copie tous les fichiers du répertoire courant de l'hôte vers le répertoire de travail du conteneur
COPY . .

# Expose le port 3000 pour permettre à l'application d'écouter les connexions entrantes
EXPOSE 3000

# Spécifie la commande par défaut à exécuter lorsque le conteneur démarre
CMD [ "npm", "start" ]
