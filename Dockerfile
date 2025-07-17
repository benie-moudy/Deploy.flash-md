# Utiliser Node.js
FROM node:18

# Installer git
RUN apt-get update && apt-get install -y git

# Créer un dossier de travail
WORKDIR /app

# Cloner Flash-Md-V2 directement depuis GitHub
RUN git clone https://github.com/franceking1/Flash-Md-V2.git .

# Installer les dépendances
RUN npm install

# Lancer le bot
CMD ["node", "."]
