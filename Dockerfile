# Utiliser une image officielle Node.js
FROM node:18

# Définir le répertoire de travail
WORKDIR /app

# Copier uniquement les fichiers package.json et package-lock.json pour installer les dépendances
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier tout le reste du code source
COPY . .

# Exposer le port utilisé par React en développement
EXPOSE 3000

# Commande pour démarrer l'application React en mode développement
CMD ["npm", "start"]