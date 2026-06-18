# Use the official Red Hat Universal Base Image (UBI) for Apache
# This ensures it runs perfectly with OpenShift's default strict security permissions
FROM registry.access.redhat.com/ubi8/httpd-24:latest

# Copy your index.html from your repository into the Apache server directory
# OpenShift clones the repo into the container context automatically during the build
COPY index.html /var/www/html/

# Expose port 8080 (OpenShift's default non-root port for Apache)
EXPOSE 8080

# Start Apache in the foreground
CMD ["httpd", "-D", "FOREGROUND"]
