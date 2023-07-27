ARG BALLERINA_VERSION=2201.7.0

FROM ballerina/ballerina:${BALLERINA_VERSION} AS ballerina-tools-build
LABEL maintainer "dilhasha"

USER root

COPY CartService /home/work-dir/CartService
WORKDIR /home/work-dir/CartService

RUN bal build
