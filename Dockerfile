FROM node:alpine

WORKDIR /usr/app

COPY package*.json ./

RUN \
  npm install -g npm && \
  npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
