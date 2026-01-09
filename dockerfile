FROM tomcat:9.0-jdk17

# Default Tomcat apps remove cheyyadam
RUN rm -rf /usr/local/tomcat/webapps/*

# Mee WAR file copy (ROOT context)
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

# Tomcat default port
EXPOSE 8080

# Tomcat foreground lo run avvali (ECS ki MUST)
CMD ["catalina.sh", "run"]


