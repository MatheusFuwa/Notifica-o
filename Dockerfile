FROM gradle:9.7.1-jdk17-noble AS BUILD
WORKDIR /app
COPY . .
run gradle build --no-daemon

FROM eclipse-temurin:17-jdk-jammy
WORKDIR /app
COPY --from=build /app/build/libs/*.jar /app/Notificacao.jar
EXPOSE 8082
CMD ["java", "-jar", "/app/Notificacao.jar"]