# Use the CentOS 7 base image
FROM centos:7

#Description
LABEL description="Arnaudee Apache"

# update the system
RUN yum update -y 

# Install Apache
RUN yum install -y httpd

# Copy index file from your local to inside the container
COPY index.html /var/www/html

# Expose port 80
EXPOSE 80

#In this case, you want to start the Apache service
ENTRYPOINt ["/usr/sbin/httpd"]

# Start Apache service
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

