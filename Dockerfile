FROM eclipse-temurin:17-jdk-alpine

EXPOSE 8080

ENV APP_HOME=/usr/src/app
WORKDIR $APP_HOME

# Copy JAR built by Maven
COPY target/*.jar app.jar

CMD ["java", "-jar", "app.jar"]
