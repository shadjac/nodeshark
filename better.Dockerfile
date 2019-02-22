FROM 192.168.1.188:5000/node:10-alpine

#RUN mkdir /nodeshark && cd /nodeshark
RUN addgroup -S nodeGroup && adduser -S -G nodeGroup nodeUser

WORKDIR /nodeshark

RUN chown -R nodeUser:nodeGroup /nodeshark

USER nodeUser

COPY . .

ENV PORT 5050

RUN npm install

CMD node app.js