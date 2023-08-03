docker-compose up -d --build
docker exec optykaoptometria sh -c 'crontab -r'
docker exec optykaoptometria sh -c 'crontab -l | { cat; echo "0 2 1 * * certbot renew --force-renew"; } | crontab -'
docker exec optykaoptometria sh -c 'service cron start'
docker exec optykaoptometria bash -c 'certbot --nginx -d optykaoptometria.pl --agree-tos -m heyimjustalex@gmail.com'
