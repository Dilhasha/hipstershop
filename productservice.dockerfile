FROM gcr.io/microrts-sample/build-productservice:1.0.0 AS productservice-build

FROM eclipse-temurin:11-jre-alpine

RUN mkdir -p /work-dir \
    && addgroup troupe \
    && adduser -S -s /bin/bash -g 'ballerina' -G troupe -D ballerina \
    && apk upgrade \
    && chown -R ballerina:troupe /work-dir

USER ballerina

WORKDIR /home/work-dir/

COPY --from=productservice-build /home/work-dir/ProductService/target/bin/ProductService.jar /home/work-dir/

EXPOSE 9232

ENV BAL_CONFIG_DATA "[ballerina.observe]\n\
metricsEnabled=false\n \
metricsReporter=\"prometheus\"\n \
tracingEnabled=true\n\
tracingProvider=\"jaeger\"\n \
[ballerinax.jaeger]\n \
agentHostname=\"10.128.0.5\"\n \
agentPort=4317\n"

ENV JAVA_TOOL_OPTIONS "-XX:+UseContainerSupport -XX:MaxRAMPercentage=80.0 -XX:TieredStopAtLevel=1"

CMD [ "java", "-jar", "ProductService.jar"]
