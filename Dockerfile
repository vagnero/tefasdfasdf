# Usa a imagem oficial do Node.js baseada no Ubuntu
FROM node:20

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia o package.json e o package-lock.json
COPY package*.json ./

# Instala as dependências
RUN npm install

# Copia todo o restante do código para o container
COPY . .

# Define a porta em que o servidor irá rodar
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["npm", "run", "dev"]