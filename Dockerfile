# Use the official lightweight Apache image
FROM httpd:2.4-alpine

# Copy your local static files into the Apache public HTML directory
COPY ./index.html /usr/local/apache2/htdocs/

# Expose port 80 to the outside world
EXPOSE 80
