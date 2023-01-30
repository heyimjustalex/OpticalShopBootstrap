FROM nginx:alpine
WORKDIR /etc/letsencrypt/live/optykaoptometria.pl
COPY ./certbot_etc/live/optykaoptometria.pl/* .