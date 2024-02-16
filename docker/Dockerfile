FROM node:21-alpine as development

WORKDIR /usr/src/app

COPY package*.json .

RUN npm i

COPY . .

RUN npm run build

FROM nginx:stable-alpine as production

COPY --from=development /usr/src/app/dist /usr/share/nginx/html

COPY docker/nginx.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]
