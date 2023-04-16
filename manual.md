Run Docker container with PostgreSQL

``` 
docker run -it \
-e POSTGRES_USER="root" \
-e POSTGRES_PASSWORD="root" \
-e POSTGRES_DB="hms" \
-v "$(pwd)/hms_data:/var/lib/postgresql/data" \
-p 8058:5432 \
postgres:15
```