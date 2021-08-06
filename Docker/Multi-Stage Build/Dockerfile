FROM python:slim as dependency
WORKDIR /reqs
COPY requirements.txt /reqs
RUN pip install -r requirements.txt

FROM node:lts as packages
WORKDIR /packages
COPY packages.json .
RUN npm install

FROM python:slim 
RUN apt-get update && apt-get install nodejs -y
WORKDIR /home/app
COPY ./code/ .
COPY --from=dependency /urs/local/lib/python3/site-packages /urs/local/lib/python3/site-packages/
COPY --from=packages /packages/node_modules/ /home/app/node_modules
ENTRYPOINT node server.js