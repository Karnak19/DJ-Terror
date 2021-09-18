FROM node:16-alpine
RUN apk add python3 make gcc g++

WORKDIR /usr/src/app

ARG PREFIX=${PREFIX}
ARG TOKEN=${TOKEN}
ARG ACTIVITY=${ACTIVITY}

COPY . .
RUN yarn install

ENV NODE_ENV=production

CMD [ "yarn", "start" ]