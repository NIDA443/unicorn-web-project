# Use an official Tomcat image as the base
FROM tomcat:9.0

# Set the working directory inside the container
WORKDIR /usr/local/tomcat/webapps/

# Copy the compiled WAR file from the build to the container
COPY target/unicorn-web-project.war ./unicorn-web-project.war

# Expose port 8080 (default Tomcat port)
EXPOSE 8080

# Start Tomcat when the container runs
CMD ["catalina.sh", "run"]
