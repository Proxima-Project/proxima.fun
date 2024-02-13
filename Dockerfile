# syntax=docker/dockerfile:1


### Подтягиваем Node.js версии 21.
### Версия постфикса Alpine — минифицированная.
FROM node:21-alpine

### Устанавливаем кодировку.
#RUN apt update && apt -y install locales && locale-gen en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV LC_ALL=en_US.UTF-8
ENV WDS_SOCKET_PORT=443

### Информация об этом пакете.
LABEL name="gesugaosan/proxima.fun"
LABEL website="proxima.fun"
LABEL Name="gesugaosan/proxima.fun"
LABEL Website="proxima.fun"

RUN echo "Node:" & node -v
RUN echo "NPM:" & npm -v

ARG buildno
ARG gitcommithash

RUN echo "Build number: $buildno"
RUN echo "Based on commit: $gitcommithash"

### Устанавливаем режим окружения Node.js.
ENV NODE_ENV=production

### Указываем каталог текущий рабочий каталог в образе Docker'а.
WORKDIR /usr/src/app

### Копируем файлы (при наличии).
COPY [\
  "package.json", \
  "package-lock.json*", \
  "npm-shrinkwrap.json*", \
  "./"\
]

### Устанавливаем зависимости проекта.
#RUN apt-get update && apt-get install -y nodejs npm && rm -rf /var/lib/apt/lists/*

#RUN npm install -g npm

#RUN npm install --production --silent && mv node_modules ../
RUN npm install --production --silent


### Копируем файлы и каталоги проекта в текущий рабочий каталог.
COPY . .

### Сообщаем Docker'у, что для работы нам нужен порт.
EXPOSE 8080:8080

### Устанавливаем владельцем node для рабочего каталога рекурсивно.
RUN chown -R node /usr/src/app

### Set the user to use when running this image.
USER node

### Запуск приложения из 'package.json'
CMD ["npm", "run", "dev"]
