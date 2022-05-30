FROM node:16.15.0
COPY ./ /app
WORKDIR /app

ENV WS_SECRET ""

EXPOSE 3000

RUN npm install -g grunt && npm install && grunt

CMD ["npm", "start"]
