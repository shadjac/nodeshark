FROM node:10-alpine

WORKDIR /home/node/

RUN apk add git

USER node

RUN git clone https://github.com/shadjachaudhari13/nodeshark.git

WORKDIR nodeshark

RUN npm install

ENV PORT 5050

EXPOSE 5050

CMD [ "node", "app.js" ]