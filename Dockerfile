FROM httpd

RUN apt-get update
RUN apt-get install bash
WORKDIR /usr/local/apache2/htdocs/optykaoptometria.pl
COPY optometria-waligora/. .

COPY httpd.conf /usr/local/apache2/conf
COPY httpd-vhosts.conf /usr/local/apache2/conf/extra

EXPOSE 80