FROM alpine
WORKDIR /app
COPY ./target/graalvm-native-docker-demo ./graalvm-native-docker-demo
RUN ls -la
CMD graalvm-native-docker-demo