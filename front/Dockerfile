FROM ubuntu:18.04

RUN mkdir /front
WORKDIR /front

COPY . /front

RUN apt update
RUN apt install -y curl
RUN curl --silent --location https://deb.nodesource.com/setup_12.x | bash -
RUN apt install -y nodejs 

RUN npm install

EXPOSE 4200

CMD ["npm", "start"]