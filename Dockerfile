
FROM openjdk:7

COPY . /usr/grib2json

WORKDIR /usr/grib2json

RUN apt-get update -y
RUN apt-get install maven -y
RUN apt-get install curl
RUN mvn package
RUN mkdir /usr/build
RUN tar zxvf target/grib2json-0.8.0-SNAPSHOT.tar.gz -C /usr/build/
RUN cd /usr/build/grib2json-0.8.0-SNAPSHOT/bin
RUN chmod +x essai.sh
# RUN sh grib2json trololo
