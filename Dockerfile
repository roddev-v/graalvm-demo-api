FROM container-registry.oracle.com/graalvm/native-image:21.0.3-muslib-ol9-20240504 AS builder

WORKDIR /build

COPY . /build

RUN ./mvnw --no-transfer-progress native:compile -Pnative

FROM container-registry.oracle.com/os/oraclelinux:9-slim

EXPOSE 8080

COPY ./build/target/graalvm-native-docker-demo app
ENTRYPOINT ["/app"]