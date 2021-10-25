# FROM node:alpine    
# EXPOSE 3000
# COPY db.json /opt/db.json
# RUN yarn global add json-server
# CMD ["json-server", "-H", "127.0.0.1", "/opt/db.json"]
FROM node:alpine

WORKDIR /usr/app

COPY package.json yarn.lock ./

RUN yarn global add json-server

RUN yarn

COPY . .

EXPOSE 3003

CMD yarn dev