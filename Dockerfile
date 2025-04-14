# ✅ Multi-platform base image (Debian-based)
FROM eclipse-temurin:18-jdk

# Install required dependencies for build
RUN apt-get update && \
    apt-get install -y git curl maven && \
    apt-get clean \

# Set working directory
WORKDIR /app

# Copy project files (excluding `src` to use caching efficiently)
COPY pom.xml .

# Resolve dependencies (this speeds up builds by using caching)
RUN mvn dependency:resolve

# Copy the rest of the source code
COPY src src

# Build the project
RUN mvn clean package -DskipTests

# Run the application
ENTRYPOINT ["java", "-jar", "target/api-config-server.jar"]