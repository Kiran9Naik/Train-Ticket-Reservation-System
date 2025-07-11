#writting docker file to the java service

FROM openjdk:17-jdk-slim
WORKDIR /app
COPY target/*.war app.war

EXPOSE 8111
CMD ["java", "-jar", "app.war"]
