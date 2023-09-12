FROM node:18-alpine
RUN mkdir /app
WORKDIR /app
COPY package.json .
COPY . .
RUN yarn
EXPOSE 3000
CMD [ "yarn", "run", "dev" ]
