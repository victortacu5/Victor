FROM node:14
WORKDIR /victortacu/Victor
RUN npm install
COPY . .
CMD [ "node", "server.js" ]
