FROM node:21-alpine

USER node

WORKDIR /usr/src/app

COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]

RUN npm i && npm cache clean --force

COPY . .

CMD ["npm", "run", "dev"]
