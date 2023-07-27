ARG BALLERINA_VERSION=2201.7.0

FROM ballerina/ballerina:${BALLERINA_VERSION} AS ballerina-tools-build
LABEL maintainer "dilhasha"

USER root

COPY PaymentService /home/work-dir/PaymentService
WORKDIR /home/work-dir/PaymentService

RUN bal build
