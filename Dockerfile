FROM node:14
ENV NODE_ENV=production

WORKDIR /victortacu/Victor

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . .

CMD [ "node", "server.js" ]
