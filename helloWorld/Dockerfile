FROM openjdk:8-alpine

COPY target/*.jar /app.jar

VOLUME /logs

CMD ["java", "-jar", "-Djava.security.egd=file:/dev/./urandom -Djava.net.preferIPv4Stack=true", "/app.jar"]