FROM node:15

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

ENV WEB_PORT=8080

EXPOSE 8080
CMD [ "npm", "start" ]

