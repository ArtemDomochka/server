FROM amd64/ubuntu:trusty

RUN apt-get update\
    && apt-get install -y gcc-multilib g++-multilib libboost-all-dev

WORKDIR /src

ADD ${pwd}/src /src

RUN ./build.sh

EXPOSE 80

ENTRYPOINT ./server 0.0.0.0 80 .




