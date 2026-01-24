FROM tomcat:8-jre8

LABEL maintainer="thriveni" version="v1.0.0"

# Remove default Tomcat applications (security best practice)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file and deploy as ROOT application
COPY target/TrainBook-1.0.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
