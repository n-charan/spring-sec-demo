# # ===== Stage 1: Build the application =====
# FROM openjdk:17-jdk-slim AS builder
#
# WORKDIR /app
#
# COPY mvnw pom.xml ./
# COPY .mvn .mvn
# COPY src src
#
# RUN chmod +x ./mvnw
# RUN ./mvnw clean package -DskipTests
#
# # ===== Stage 2: Run the application =====
# FROM openjdk:17-jdk-slim
#
# WORKDIR /apps
#
# COPY --from=builder /app/target/*.jar app.jar
#
# EXPOSE 80
#
# ENTRYPOINT ["java", "-jar", "app.jar", "--server.port=80"]


FROM openjdk:17-jdk-slim

WORKDIR /app

# Copy your already-built .jar file
COPY target/*.jar app.jar

EXPOSE 80

ENTRYPOINT ["java", "-jar", "app.jar", "--server.port=80"]