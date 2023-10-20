FROM ubuntu:20.04 as base
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
		 php \
		 php-xml \
		 php-zip \
		 php-sqlite3 \
		 unzip
ADD https://files.spip.net/spip/archives/spip-v4.2.0.zip /tmp/
RUN unzip /tmp/spip-v4.2.0.zip -d /var/www/
RUN cd /var/www/ && php -S 0.0.0.0:8000
