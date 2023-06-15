FROM adoptopenjdk/openjdk11:alpine-jre
ARG artifact=target/my-app.jar
WORKDIR /opt/app
COPY ${artifact} app.jar
ENTRYPOINT ["java","-jar","app.jar"]
EXPOSE 8080
