ARG BALLERINA_VERSION=2201.7.0

FROM ballerina/ballerina:${BALLERINA_VERSION} AS ballerina-tools-build
LABEL maintainer "dilhasha"

USER root

COPY ProductService /home/work-dir/ProductService
WORKDIR /home/work-dir/ProductService

RUN bal build
