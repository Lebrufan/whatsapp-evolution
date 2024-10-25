# Use uma imagem base do Node.js
FROM node:14

# teste
# Crie e defina o diretório de trabalho
WORKDIR /app

# Copie o package.json e package-lock.json da pasta específica
COPY evolution-api/package*.json ./

# Instale as dependências
RUN npm install

# Copie o restante do código da aplicação
COPY evolution-api/package*.json .

# Exponha a porta que a aplicação irá rodar
EXPOSE 8080

# Comando para iniciar a aplicação
CMD ["npm", "start"]

