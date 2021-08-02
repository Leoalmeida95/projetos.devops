FROM node:6
LABEL Author = "Leonardo Almeida"
COPY . /var/www
WORKDIR /var/www
RUN npm install
ENTRYPOINT npm start
EXPOSE 3000