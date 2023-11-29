FROM node:18-alpine as build-stage

FROM nginx:alpine

# Containers run nginx with global directives and daemon off
ENTRYPOINT ["nginx", "-g", "daemon off;"]