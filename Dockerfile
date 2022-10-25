# syntax=docker/dockerfile:1
FROM node:12-alpine
RUN apk add --no-cache python2 g++ make
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]
EXPOSE 3000


################## Build and run##############################

# docker build -t todo-nodejs .
# docker run --name todonodejs -d -p 8443:3000 todo-nodejs
# http://localhost:8443

############## Push Docker image ############################
# docker push docker/getting-started

################### Info ################################

# FROM--------- to publl base image 
# WORKDIR------ to sets the working directory 
# RUN ------ ---to execute command
# COPY ---------to copy directory from your local machine to the dockker container 
# ADD --------- to copy files and folders from your local machine to docker containers 
# EXPOSE------- informs docker that the containers listens on the specified network ports at runtime
# CMD --------- to provide defauls for an existing container
# ENTRYPOINT----to configure a container taht will run as an executable



################ Interact with container #####################
# docker container ps
# docker container ps -a
# docker image ls 
# docker exec -it  <containerid> bash
# docker exec -it -u 0 <containerid> bash
# docker exec -it -u 0 <containerid> ls /

##################Additional Docker commands ##################
# docker network ls
# docker volume ls
# docker network inspect 
# docker volume inspect 
