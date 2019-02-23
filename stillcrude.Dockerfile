FROM 192.168.1.97:5000/node:10-alpine

# not graceful
#RUN mkdir /nodeshark && cd /nodeshark

# graceful
WORKDIR /nodeshark

COPY . .

ENV PORT 5050

RUN npm install

CMD ["node","app.js"]