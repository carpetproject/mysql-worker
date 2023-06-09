Navigate to the docker folder with

`cd docker`

Make sure to make both bash scripts excecutable using

`chmod +x start.sh`

`chmod +x stop.sh`

You can start and stop the container using ./start.sh and ./stop.sh inside the docker folder respectively. Starting the container will also prune unused containers and images to optimise resource use.

Alternatively you can use

Start the container using

`docker-compose up -d`

Stop the container using

`docker stop mysql-container`

`Access the mysql running in the container using `

`docker exec -it mysql-container mysql -u root -p`

To see if the container is running use

`docker ps`

You should get a result like this

```
CONTAINER ID   IMAGE          COMMAND                  CREATED       STATUS              PORTS                                                  NAMES
80fce21135dd   mysql:latest   "docker-entrypoint.s?"   2 hours ago   Up About a minute   0.0.0.0:3306->3306/tcp, :::3306->3306/tcp, 33060/tcp   mysql-container
```

If any changes are made to the init.sql you need to stop the container and remove it using these two commands

`docker stop mysql-container`

`docker rm mysql-container`
