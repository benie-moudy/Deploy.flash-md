# Utiliser une image Node.js stable
FROM node:18

# Installer les outils nécessaires (git, ffmpeg, python, build tools si besoin)
RUN apt-get update && apt-get install -y \
    git \
    ffmpeg \
    python3 \
    make \
    g++

# Définir le répertoire de travail
WORKDIR /app

# Cloner le projet depuis GitHub
RUN git clone https://github.com/franceking1/Flash-Md-V2.git .

# Installer les dépendances Node.js
RUN npm install

# Exposer le port utilisé par le serveur Express (important pour Render)
EXPOSE 10000

# Lancer le bot
CMD ["node", "index.js"]
