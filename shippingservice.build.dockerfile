ARG BALLERINA_VERSION=2201.7.0

FROM ballerina/ballerina:${BALLERINA_VERSION} AS ballerina-tools-build
LABEL maintainer "dilhasha"

USER root

COPY ShippingService /home/work-dir/ShippingService
WORKDIR /home/work-dir/ShippingService

RUN bal build
