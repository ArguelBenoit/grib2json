
FROM openjdk:7

COPY . /usr/grib2json

WORKDIR /usr/grib2json

RUN apt-get update -y
RUN apt-get install maven -y
RUN mvn package
RUN mkdir ../build
RUN tar zxvf target/grib2json-0.8.0-SNAPSHOT.tar.gz -C /usr/build/
RUN cd ../build/grib2json-0.8.0-SNAPSHOT/bin
RUN bash grib2json
