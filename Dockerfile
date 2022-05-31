FROM node:alpine
COPY ./ /app
WORKDIR /app
ARG WS_SECRET
ENV WS_SECRET=$WS_SECRET

EXPOSE 3000

RUN npm install -g grunt && npm install && grunt

CMD ["npm", "start"]
