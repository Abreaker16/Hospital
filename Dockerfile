# Use the official PHP image with Apache
FROM php:8.2-apache

# Enable Apache mod_rewrite if needed
RUN a2enmod rewrite

# Install common PHP extensions (e.g., mysqli/pdo for database connection)
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy the application source code into the container
COPY Hospital-main/ /var/www/html/

# Set working directory
WORKDIR /var/www/html/

# Expose port 80 (Cloud Run injects PORT environment variable, Apache defaults to 80)
EXPOSE 80
