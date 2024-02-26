#stage 1
FROM node:17-alpine as builder
WORKDIR /app
COPY yarn.lock .
RUN npm install react-scripts
RUN yarn install
COPY . .
RUN yarn build
