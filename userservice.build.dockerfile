ARG BALLERINA_VERSION=2201.7.0

FROM ballerina/ballerina:${BALLERINA_VERSION} AS ballerina-tools-build
LABEL maintainer "dilhasha"

USER root

COPY UserService /home/work-dir/UserService
WORKDIR /home/work-dir/UserService

RUN bal build
