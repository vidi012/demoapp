FROM tomcat:9.0

# Copy the .war file from the build stage into the Tomcat webapps directory
COPY ./target/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat when the container launches
CMD ["catalina.sh", "run"]

