FROM drupal:latest

# Copy ports.conf into container
COPY ports.conf /etc/apache2/ports.conf

# Modify Apache configuration to use ports.conf
RUN sed -i 's/Listen 80/Listen 8082/' /etc/apache2/sites-available/000-default.conf
RUN sed -i 's/VirtualHost \*:80/VirtualHost \*:8082/' /etc/apache2/sites-available/000-default.conf