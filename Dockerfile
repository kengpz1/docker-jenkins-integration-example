FROM openjdk:8
EXPOSE 8081
COPY target/ohorich-0.0.1.jar ohorich-0.0.1.jar
ENTRYPOINT ["java","-jar", "/ohorich-0.0.1.jar"]