FROM ubuntu:20.04

RUN mkdir /api
WORKDIR /api

COPY . /api

RUN apt update
RUN apt install -y maven openjdk-11-jdk 

ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64
RUN export JAVA_HOME

CMD ["./target/tlcdemoApp-1.0.0-SNAPSHOT-runner"]