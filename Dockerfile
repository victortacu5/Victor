FROM golang:1.11-alpine
RUN mkdir /openshift
COPY server.js /openshift
WORKDIR /openshift
RUN go build -o server.js .
ENTRYPOINT ["/server.js"]
