# Create development environement using docker containers

```docker 
FROM node:18.0-alpine
RUN apk add --no-cache rsync
WORKDIR /usr/local/src
COPY package* ./
RUN npm install
RUN npm install nodemon -g
COPY ./script.sh script.sh
EXPOSE 3000
CMD [ "./script.sh" ]
```

In this docker file, we are not copying anything except `package.json` files and entrypoint script (`script.sh`). So the docker image which is getting creating won't have code in it, we will mount the volume while creating the container, and that would have the disk.
