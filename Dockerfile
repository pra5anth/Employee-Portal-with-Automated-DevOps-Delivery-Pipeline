FROM ubuntu
RUN apt update
RUN apt install apache2 -y
COPY index.html /var/www/html/index.html
ENTRYPOINT apachectl -D FOREGROUND
