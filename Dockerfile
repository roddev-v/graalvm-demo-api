FROM alpine
WORKDIR /app
COPY ./target/graalvm-native-docker-demo ./graalvm-native-docker-demo
#CMD ["./graalvm-native-docker-demo"]
CMD ["ls", "-la"]