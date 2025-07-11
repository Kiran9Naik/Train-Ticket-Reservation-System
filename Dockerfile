#writting docker file to the java service

# FROM openjdk:17-jdk-slim
# WORKDIR /app
# COPY target/*.war app.war

# EXPOSE 8111
# CMD ["java", "-jar", "app.war"]
# Use official Tomcat image
FROM tomcat:9.0-jdk17

# Clean default apps (optional)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into Tomcat webapps directory
COPY target/TrainBook-1.0.0-SNAPSHOT.war /usr/local/tomcat/webapps/app.war

EXPOSE 8080

