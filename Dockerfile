#FROM tomcat:9-jre8-alpine
#RUN rm -rf /usr/local/tomcat/webapps/*


#COPY target/VENTAS-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/

#RUN addgroup tomcatusers && adduser -D tomcat && adduser tomcat tomcatusers
#RUN chown -R tomcat:tomcatusers /usr/local/tomcat
#USER tomcat

#CMD ["catalina.sh","run"]
#EXPOSE 3080
#FROM eclipse-temurin:8-jdk-focal
#ADD target/VENTAS-1.0-SNAPSHOT.war VENTAS-1.0-SNAPSHOT.war
#EXPOSE 8080
#ENTRYPOINT ["java", "-jar", "VENTAS-1.0-SNAPSHOT.war"]

FROM eclipse-temurin:8-jdk-focal
ADD target/VENTAS-1.0-SNAPSHOT.jar VENTAS-1.0-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "VENTAS-1.0-SNAPSHOT.jar"]
