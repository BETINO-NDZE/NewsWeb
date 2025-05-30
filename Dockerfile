# Start from a PHP image with Apache
FROM php:8.2-apache

# Install required dependencies
RUN apt-get update && apt-get install -y \
    libpq-dev \
    && docker-php-ext-install pdo_pgsql

# Enable Apache mod_rewrite if needed
RUN a2enmod rewrite

# Set working directory
WORKDIR /var/www/html

# Copy your application files
COPY . /var/www/html/

# Set permissions for Apache user
RUN chown -R www-data:www-data /var/www/html/

# Expose port 80 (default Apache port)
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]
