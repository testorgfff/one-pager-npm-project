# FROM alpine:latest
# FROM node:16
FROM node:16-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)

COPY 1_OnePager/ ./

# RUN npm install
# If you are building your code for production
RUN npm ci --production

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]
