FROM node:alpine

WORKDIR /app/medusa
COPY package.json .

RUN apk update
RUN apk add python3
RUN yarn global add @medusajs/medusa-cli

COPY . .

CMD medusa migrations run; medusa start