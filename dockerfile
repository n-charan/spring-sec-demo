FROM openjdk:17-jdk-slim as builder

WORKDIR /app

COPY mvnw pom.xml ./
COPY .mvn .mvn
COPY src src

RUN chmod +x ./mvnw
RUN ./mvnw clean package -DskipTests

# ===== Stage 2: Run the application =====
FROM openjdk:17-jdk-slim

WORKDIR /app

# Copy the application JAR file into the container
COPY --from=builder /app/target/*.jar app.jar

EXPOSE 80

# Update the ENTRYPOINT to pass the port explicitly
ENTRYPOINT ["java", "-jar", "app.jar", "--server.port=80"]