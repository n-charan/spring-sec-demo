# ===== Stage 1: Build the application =====
FROM openjdk:17-jdk-slim AS builder

WORKDIR /app

COPY mvnw pom.xml ./
COPY .mvn .mvn
COPY src src

RUN chmod +x ./mvnw
RUN ./mvnw clean package -DskipTests

# ===== Stage 2: Run the application =====
FROM openjdk:17-jdk-slim

WORKDIR /app

COPY --from=builder /app/target/*.jar app.jar

EXPOSE 80

ENTRYPOINT ["java", "-jar", "app.jar", "--server.port=80"]
