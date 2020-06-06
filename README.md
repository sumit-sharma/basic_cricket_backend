### This is Created using laravel

Your system should have php 7+, composer, mysql, apache pre-installed to run this

_open terminal_ 
```
git clone https://github.com/sumit-sharma/basic_cricket_backend.git

composer install

```

Important steps 

- copy .env.example as .env
- configure database configuration
- run migration and seeder

```
php artisan migrate:install --seed
```

if you have domain or virtual host

open browser, type  <http://example.com/api/documentation>

if virtual host is not available then run php server
```
php artisan serve
``` 
open browser, type  <http://127.0.0.1:8000/api/documentation>


