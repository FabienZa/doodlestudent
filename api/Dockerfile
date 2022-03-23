FROM ubuntu:16.04

RUN mkdir /api
WORKDIR /api

COPY . /api

RUN apt update
RUN apt install -y maven openjdk-8-jdk libpng16-16 libjasper1 libdc1394-22

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
RUN export JAVA_HOME

CMD ["./target/tlcdemoApp-1.0.0-SNAPSHOT-runner"]