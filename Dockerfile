FROM node

WORKDIR /app

#COPY package.json /app - кэш 

COPY . .

RUN npm install

ENV PORT 4200

EXPOSE $PORT

VOLUME [ "/app/data" ]

CMD [ "node", "app.js" ]