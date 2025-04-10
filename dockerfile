# Use Tomcat base image
FROM tomcat:11.0.6-jdk21-temurin-noble

# Copy the WAR file into Tomcat’s webapps directory
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 for Tomcat
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
