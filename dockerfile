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


------------------------------------------------------------

#2
# FROM openjdk:17-jdk-slim
#
# WORKDIR /app
#
# # Copy your already-built .jar file
# COPY target/*.jar app.jar
#
# EXPOSE 80
#
# ENTRYPOINT ["java", "-jar", "app.jar", "--server.port=80"]


-------------------------------------------------------------------

    #3

# Use a slim OpenJDK image
FROM openjdk:17-jdk-slim

# Create a non-root user (optional but recommended for security)
RUN useradd -ms /bin/bash springuser

# Set working directory
WORKDIR /app

# Copy the already-built JAR into the container
COPY target/*.jar app.jar

# Change ownership of the JAR to the non-root user
RUN chown springuser:springuser app.jar

# Switch to the non-root user
USER springuser

# Expose application port (you’re using 80 instead of default 8080)
EXPOSE 80

# Allow overriding of port and other args using JAVA_OPTS
ENV JAVA_OPTS=""

# Default entrypoint
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar app.jar --server.port=80"]
