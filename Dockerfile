FROM node:lts-alpine

ENV NODE_ENV=production

# делаем каталог '/usr/src/app' текущим рабочим каталогом
WORKDIR /usr/src/app

# копируем оба 'package.json', 'package-lock.json' и 'npm-shrinkwrap.json' (если есть)
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]

# устанавливаем зависимости проекта
#RUN apt-get update && apt-get install -y nodejs npm && rm -rf /var/lib/apt/lists/*
RUN npm install -g npm --silent
#RUN npm install --production --silent && mv node_modules ../
RUN npm install --production --silent

# копируем файлы и каталоги проекта в текущий рабочий каталог
COPY . .

EXPOSE 8080

RUN chown -R node /usr/src/app

USER node

CMD ["npm", "start"]
