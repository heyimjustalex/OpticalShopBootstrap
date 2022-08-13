FROM httpd

WORKDIR /usr/local/apache2/htdocs
RUN apt-get update && apt-get install bash
RUN sed -i '/LoadModule rewrite_module/s/^#//g' /usr/local/apache2/conf/httpd.conf

RUN { \
    echo 'IncludeOptional conf.d/*.conf'; \
    } >> /usr/local/apache2/conf/httpd.conf \
    && mkdir /usr/local/apache2/conf.d
COPY . .
COPY httpd.conf /usr/local/apache2/conf
EXPOSE 80