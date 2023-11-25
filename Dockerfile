FROM node:18-alpine as build-stage

RUN mkdir /app

#copy all files from dist directory to docker
COPY ./dist /app

FROM nginx:alpine

WORKDIR /usr/share/nginx/html

RUN rm -rf ./*

COPY --from=build-stage /app .

# Containers run nginx with global directives and daemon off
ENTRYPOINT ["nginx", "-g", "daemon off;"]