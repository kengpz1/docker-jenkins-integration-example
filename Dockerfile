FROM tomcat:9.0.34-jdk8-openjdk
RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/ohorich-0.0.1.war /usr/local/tomcat/webapps/
EXPOSE 8081
CMD ["catalina.sh", "run"]

#FROM tomcat:9-jdk8
#COPY target/ohorich-0.0.1.war /usr/local/tomcat/webapps/
#EXPOSE 8081
#ENTRYPOINT ["java","-jar", "/ohorich-0.0.1.jar"]