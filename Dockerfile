# Dockerfile
FROM node:13-alpine

# set maintainer
LABEL maintainer "duyquoc.nguyen.bk@gmail.com"

# create app directory on container
WORKDIR /app

# install app dependencies
COPY package*.json* ./
RUN npm install

# copy app source code // copy all then paste inside WORDIR 
COPY . .

# expose port
EXPOSE 3000

# run app
CMD [ "npm", "start" ]

