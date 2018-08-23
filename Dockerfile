FROM node:alpine

RUN apk add --no-cache make gcc g++ python git

COPY . /src/phantom-rpc

RUN cd /src/phantom-rpc \
    && npm install -g forever \
    && npm install

WORKDIR /src/phantom-rpc
ENTRYPOINT ["forever","./server.js"]

EXPOSE 8080
