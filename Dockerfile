FROM library/debian:10
LABEL MAINTAINER="djuanpere@tarragona.cat"


RUN apt-get update && apt-get -y install libapache2-mod-php php-mysql php-gd curl && \ 
    cd /var/www/html && \
    curl -s https://es.wordpress.org/latest-es_ES.tar.gz -o ./test.tar.gz && \
    tar -xvf test.tar.gz

EXPOSE 80

CMD [ "/usr/sbin/apache2ctl", "-D", "FOREGROUND" ]
