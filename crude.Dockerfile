FROM node:10-alpine

COPY . .

ENV PORT 5050

RUN npm install

ENTRYPOINT node app.js

# why shoudn't I write RUN node app.js?