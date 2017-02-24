FROM php:fpm

MAINTAINER Robert Cox <robert@studiorclv>

RUN \
	apt-get -y update && \
	apt-get -y install \
		libxml2-dev \
		libxslt1-dev \
		libicu-dev \
		libmcrypt-dev \
		curl \
		libcurl4-gnutls-dev \
		zlib1g-dev \
		libpng-dev \
		zip \
		unzip \
		redis-server

RUN \
	docker-php-ext-install \
		soap \
		xml \
		intl \
		mcrypt \
		mbstring \
		curl \
		ctype \
		json \
		iconv \
		zip

CMD service redis-server start