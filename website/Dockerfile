
FROM php:7.1.23-apache

WORKDIR /var/www/html

COPY . /var/www/html/

#The RUN instruction allows you to execute shell commands inside the container during the image build process. In this case, the command appends the line "ServerName localhost:80" to the Apache configuration file /etc/apache2/apache2.conf. This line is used to set the server name for Apache, and it's helpful to prevent warnings during Apache startup when the ServerName is not specified.
RUN echo "ServerName localhost:80" >> /etc/apache2/apache2.conf

#pdo_mysql extension is essential for PHP applications that need to connect to a MySQL database. By installing this extension, you ensure that your PHP app can communicate with MySQL databases.
RUN docker-php-ext-install pdo_mysql

#The CMD instruction specifies the default command to be executed when the container starts. In this case, it runs the command apache2ctl -D FOREGROUND, which starts the Apache web server and keeps it running in the foreground. The -D FOREGROUND option is commonly used to prevent the container from exiting immediately after starting Apache, allowing the container to keep running as long as Apache is running.
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
