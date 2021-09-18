FROM node:16-alpine

WORKDIR /usr/src/app

ARG PREFIX=${PREFIX}
ARG TOKEN=${TOKEN}
ARG ACTIVITY=${ACTIVITY}

RUN yarn install

COPY . .

CMD [ "yarn", "start" ]