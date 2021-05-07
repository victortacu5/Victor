FROM node:14
WORKDIR /victortacu/Victor
COPY package*.json ./
RUN npm install
COPY . .
CMD [ "node", "server.js" ]
