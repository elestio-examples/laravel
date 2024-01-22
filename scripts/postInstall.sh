# set env vars
set -o allexport; source .env; set +o allexport;

#wait until the server is ready
echo "Waiting for software to be ready ..."
sleep 60s;



docker-compose exec -T -u root app bash -c "composer install"
docker-compose exec -T -u root app bash -c "php artisan migrate"
docker-compose exec -T -u root app bash -c "php artisan key:generate"
# docker-compose exec -T -u root app bash -c "php artisan queue:work"