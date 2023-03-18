FROM node:18.0-alpine
RUN apk add --no-cache rsync
WORKDIR /usr/local/code
COPY package* ./
RUN npm install
RUN npm install nodemon -g
COPY ./script.sh script.sh
EXPOSE 3000
CMD [ "./script.sh" ]