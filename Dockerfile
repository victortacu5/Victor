FROM node:14
WORKDIR /victortacu/Victor
RUN npm install
COPY ..
EXPOSE 3000
CMD [ "npm", "start" ]
