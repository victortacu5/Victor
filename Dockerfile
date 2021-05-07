FROM node:14
RUN mkdir /op
WORKDIR /op
COPY server.js /op
RUN npm install express
EXPOSE 3000
CMD [ "node", "server.js" ]
