FROM node:14
COPY server.js /op
WORKDIR /op
EXPOSE 3000
CMD [ "node", "server.js" ]
