# Use lightweight JDK 17 base image
FROM eclipse-temurin:17-jdk-alpine

# Set application home directory
ENV APP_HOME=/usr/src/app

# Create the app directory
WORKDIR $APP_HOME

# Copy jar file from app folder into container
COPY app/*.jar app.jar

# Expose application port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
