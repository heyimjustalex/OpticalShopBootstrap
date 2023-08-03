FROM nginx:1.22
RUN apt-get update 
RUN apt-get update --fix-missing
RUN apt-get upgrade -y
RUN apt install -y certbot python3-certbot-nginx cron vim
RUN export EDITOR=vim
WORKDIR /etc/nginx/conf.d
RUN rm default.conf
COPY my.conf .
WORKDIR /etc/nginx/ssl
COPY ./ssl/fullchain.pem .
COPY ./ssl/privkey.pem .
COPY ./ssl/dhparams.pem .

#COPY ./certbot_etc/live/optykaoptometria.pl/fullchain.pem .
#COPY ./dhparams.pem .
#COPY ./certbot_etc/live/optykaoptometria.pl/privkey.pem .
WORKDIR /usr/share/nginx/html/
COPY optometria-waligora .
# RUN nginx -s reload
#ENTRYPOINT [ "bash" ]
# WORKDIR /etc/letsencrypt/live/optykaoptometria.pl
# COPY ./certbot_etc/live/optykaoptometria.pl/* .
