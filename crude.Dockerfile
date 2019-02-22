FROM 192.168.1.188:5000/node:10-alpine

COPY . .

ENV PORT 5050

RUN npm install

# why shoudn't I write RUN node app.js?