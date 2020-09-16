FROM node:current-alpine

RUN mkdir /app

ADD . /app
WORKDIR /app

RUN rm -rf .git \
    .gitignore \
    .env.example \
    docker-compose.yml \
    Dockerfile \
    README.md

RUN yarn install

CMD ["yarn", "start"]
