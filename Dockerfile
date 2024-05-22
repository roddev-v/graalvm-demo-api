FROM quay.io/quarkus/ubi-quarkus-mandrel-builder-image:23.0.0.0-Final-java17

ARG APP_FILE
EXPOSE 8080

COPY target/${APP_FILE} app
ENTRYPOINT ["/app"]