# Use the devopsedu/webapp base image
FROM devopsedu/webapp

# Set the working directory to /var/www/html (adjust this path according to your PHP website's root directory)
WORKDIR /var/www/html

# Copy your PHP website files from the local directory to the Docker image's working directory
COPY website /var/www/html/website

# Expose the port that your PHP application is listening on (replace 80 with the appropriate port)
EXPOSE 8080
