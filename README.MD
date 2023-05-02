Navigate to the docker folder with cd docker
Start the container using 
```
docker-compose up -d
```
Access the mysql running in the container using 
```
docker exec -it mysql-container mysql -u root -p
```