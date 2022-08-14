FROM httpd

WORKDIR /usr/local/apache2/htdocs/site1.testowadomena123.pl
RUN apt-get update && apt-get install bash
#RUN sed -i '/LoadModule rewrite_module/s/^#//g' /usr/local/apache2/conf/httpd.conf

#RUN { \
#  echo 'IncludeOptional conf.d/*.conf'; \
#  } >> /usr/local/apache2/conf/httpd.conf \
#&& mkdir /usr/local/apache2/conf.d
COPY . .
COPY httpd.conf /usr/local/apache2/conf
COPY httpd-vhosts.conf /usr/local/apache2/conf/extra
EXPOSE 80