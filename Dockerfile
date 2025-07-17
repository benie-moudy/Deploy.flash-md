# Utiliser une image Node.js stable
FROM node:18

# Installer les outils nécessaires
RUN apt-get update && apt-get install -y \
    git \
    ffmpeg \
    python3 \
    make \
    g++

# Définir le dossier de travail
WORKDIR /app

# Cloner ton projet
RUN git clone https://github.com/franceking1/Flash-Md-V2.git .

# Installer les dépendances
RUN npm install

# Exposer le port pour Render
EXPOSE 10000

# Lancer le bot via npm (utilise le script "start" défini dans package.json)
CMD ["npm", "start"]
