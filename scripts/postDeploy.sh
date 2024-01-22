docker-compose exec -T -u root app bash -c "composer install"
docker-compose exec -T -u root app bash -c "php artisan migrate"