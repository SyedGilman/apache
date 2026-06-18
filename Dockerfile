FROM registry.access.redhat.com/ubi8/httpd-24:latest

# Copy your index.html into the web root
COPY index.html /var/www/html/

# Switch to root temporarily to remove the broken SSL config file
USER root
RUN rm -f /etc/httpd/conf.d/ssl.conf

# Switch back to the non-root user that OpenShift expects
USER 1001

EXPOSE 8080

CMD ["httpd", "-D", "FOREGROUND"]
