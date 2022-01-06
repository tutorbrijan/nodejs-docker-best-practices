FROM node:lts-alpine
RUN apk add dumb-init
WORKDIR /usr/src/app
COPY --chown=node:node . .
RUN npm install
USER node
CMD ["dumb-init", "node", "server.js"]
