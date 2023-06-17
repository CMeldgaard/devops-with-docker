#Build stage
FROM node:16-alpine as buildStage
WORKDIR /usr/src/app
COPY . .

RUN npm install && \
    npm run build && \
    npm install -g serve

#Serve stage
FROM node:16-alpine
EXPOSE 5000

COPY --from=buildStage /usr/src/app/build /usr/src/app

USER node
CMD serve -s -l 5000 build
