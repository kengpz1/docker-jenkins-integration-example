FROM openjdk:8
EXPOSE 8081
ADD target/ohorich-0.0.1.jar ohorich-0.0.1.jar
ENTRYPOINT ["java","-jar", "/ohorich-0.0.1.jar"]