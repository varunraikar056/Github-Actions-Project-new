# Use Eclipse Temurin JDK 17 (lightweight Alpine base image)
FROM eclipse-temurin:17-jdk-alpine

# Expose the application port
EXPOSE 8080

# Set application home directory
ENV APP_HOME=/usr/src/app

# Create app directory
WORKDIR $APP_HOME

# Copy the jar from app/ (artifact path) to container
COPY app/*.jar app.jar

# Run the application
CMD ["java", "-jar", "app.jar"]
