FROM node:16-alpine

WORKDIR /usr/src/app

ARG PREFIX=${PREFIX}
ARG TOKEN=${TOKEN}
ARG ACTIVITY=${ACTIVITY}

COPY . .
RUN yarn install

ENV NODE_ENV=production

CMD [ "yarn", "start" ]