# Use Tomcat base image
FROM tomcat:latest

# Copy the WAR file into Tomcat’s webapps directory
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 for Tomcat
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
