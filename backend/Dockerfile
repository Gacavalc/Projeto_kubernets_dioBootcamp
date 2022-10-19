#foi realizado esse arquivo aqui justamente para encapsular os PHPs isso faz todo sentido no fim de que e uma aplicação que vai rodar 
#em um container separado


FROM php:7.4-apache   
#Subiu uma imagem do apache no container 
WORKDIR /var/www/html

COPY index.php /var/www/html/ 
 
COPY conexao.php /var/www/html/

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbodev \
        libpng-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-install mysqli

EXPOSE 80