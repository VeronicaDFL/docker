#   we're starting with a base image of node 18-alpine3.16
FROM node:18-alpine3.16

#SETUP OUR CODE FROM THE HOST MACHINE TO THE CONTAINER
WORKDIR /src/

#INSTALL DEPENDECIES
COPY . .

#
RUN npm install




CMD ["npm","start"]


