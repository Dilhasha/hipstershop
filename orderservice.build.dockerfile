ARG BALLERINA_VERSION=2201.7.0

FROM ballerina/ballerina:${BALLERINA_VERSION} AS ballerina-tools-build
LABEL maintainer "dilhasha"

USER root

COPY OrderService /home/work-dir/OrderService
WORKDIR /home/work-dir/OrderService

RUN bal build
