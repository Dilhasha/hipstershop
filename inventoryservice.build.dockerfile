ARG BALLERINA_VERSION=2201.7.0

FROM ballerina/ballerina:${BALLERINA_VERSION} AS ballerina-tools-build
LABEL maintainer "dilhasha"

USER root

COPY InventoryService /home/work-dir/InventoryService
WORKDIR /home/work-dir/InventoryService

RUN bal build
