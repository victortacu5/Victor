FROM node:14
WORKDIR /victortacu5/Victor
COPY server.js ./
RUN go build -o server.js .
ENTRYPOINT ["/server.js"]
