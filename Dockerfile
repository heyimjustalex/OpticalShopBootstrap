FROM nginx:1.22
RUN apt-get update
RUN apt-get upgrade -y
WORKDIR /etc/nginx/conf.d
RUN rm default.conf
COPY my.conf .
WORKDIR /etc/nginx/ssl
COPY ./certbot_etc/live/optykaoptometria.pl/fullchain.pem .
COPY ./certbot_etc/live/optykaoptometria.pl/privkey.pem .
WORKDIR /usr/share/nginx/html/
COPY optometria-waligora .
# RUN nginx -s reload
#ENTRYPOINT [ "bash" ]
# WORKDIR /etc/letsencrypt/live/optykaoptometria.pl
# COPY ./certbot_etc/live/optykaoptometria.pl/* .