ARG PHP_VERSION
ARG PHP_EXTENSIONS

FROM php:{{param.version}}-fpm-alpine

RUN apk add --no-cache ${PHPIZE_DEPS}
#  && \
#     pecl install ds && \
#     docker-php-ext-enable ds

RUN apk add --no-cache nano mysql-client msmtp perl wget procps shadow libzip libpng libjpeg-turbo libwebp freetype icu icu-data-full

RUN apk add --no-cache --virtual build-essentials \
    icu-dev icu-libs zlib-dev g++ make automake autoconf libzip-dev \
    libpng-dev libwebp-dev libjpeg-turbo-dev freetype-dev && \
    docker-php-ext-configure gd --enable-gd --with-freetype --with-jpeg --with-webp && \
{% for ext in param.extension %}
    docker-php-ext-install {{ext}} && \
{% endfor %}
    apk del build-essentials && rm -rf /usr/src/php*

{% for d in param.pecl %}
RUN pecl install {{d.name}}{{'-' + d.version if d.version else ''}}
RUN echo "extension={{d.name}}.so" > /usr/local/etc/php/conf.d/{{d.name}}.ini
{% endfor %}

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && chmod +x /usr/local/bin/composer
# RUN wget https://getcomposer.org/composer-stable.phar -O /usr/local/bin/composer && chmod +x /usr/local/bin/composer

{% for d in param.composer %}
RUN composer global require {{d.name}}{{':' + d.version if d.version else ''}}
{% endfor %}

EXPOSE 9000 