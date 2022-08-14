FROM httpd

RUN apt-get update && apt-get install bash
WORKDIR /usr/local/apache2/htdocs/site1.testowadomena123.pl
COPY optometria-waligora/. .

COPY httpd.conf /usr/local/apache2/conf
COPY httpd-vhosts.conf /usr/local/apache2/conf/extra

EXPOSE 80