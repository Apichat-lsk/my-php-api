FROM php:8.2-apache

# เปิดใช้งาน mod_rewrite และติดตั้ง mysqli
RUN docker-php-ext-install mysqli && a2enmod rewrite

# คัดลอกไฟล์ทั้งหมดไปยัง /var/www/html
COPY . /var/www/html

# กำหนด working directory
WORKDIR /var/www/html
