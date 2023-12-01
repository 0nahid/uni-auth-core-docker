FROM node:18

WORKDIR /app

COPY . .

RUN yarn install

RUN yarn build

EXPOSE 3002

RUN ["chmod", "+x", "./entrypoint.sh"]

ENTRYPOINT [ "sh", "./entrypoint.sh" ]