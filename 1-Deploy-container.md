# Step 1 - Create and run a Docker image

We start by creating a Docker Image for running a static HTML by static HTML website using Nginx.
[Nginx](http://nginx.org/) is a webserver that is used to directs client requests to the appropriate backend server.
Nginx could be used for other purposes like Load balancing, SSL encryption, Security and anonymity


## Search Docker image

The first task is to identify the name of the Docker Image which is configured to run nginx.

With Docker, all containers are started based on a Docker Image. 

These images contain everything required to launch the process; the host doesn't require any configuration or dependencies.

```bash
docker search nginx
```
More options at [search command help](https://docs.docker.com/engine/reference/commandline/search/)

## Docker versions

You can find existing nginx image and versions at [the docker hub](https://hub.docker.com) or by using this command:

By default, Docker will run the latest version available. If a particular version was required, it could be specified as a tag. 


## Docker run
The Docker CLI has a command called **run** which will start a container based on a Docker Image:

```bash
docker run nginx
```
By default, Docker will run the latest version available. If a particular version was required after checking [the Nginx docker hub](https://hub.docker.com/_/nginx), it could be specified as a tag, for example, version 16.04 would be :
And by adding the option **--name** , it specify a name for this container otherwise, randomly-generated name from two words, joined by an underscore, e.g. *evil_ptolemy* 

```bash
docker run --name nginx_server_test nginx:1.14.2
```
By default, Docker will run a command in the foreground then you need to press **control + c** in your terminal window to stop your container. 
To run in the **background**, the option **-d** needs to be specified.
```bash
docker run --name nginx_server_test -d nginx:1.14.2
```
Docker prints out the container ID and returns to the terminal

# Finding Running Containers

To lists all running containers:
```bash
docker ps 
```
same as:
```bash
docker container ls 
```
To list actifs and inactifs containers:
```bash
docker container ls -a 
```

To see more details such as IP Address about a running container.
```bash
docker inspect nginx_server
```

To display messages the container has written to standard error or standard out:

```bash
docker logs nginx_server
```

> NOTE:
  Commands where we specify the name of container, we can use the CONTAINER id.

# Setting port

Ports are bound when containers are started using -p <host-port>:<container-port> option.
Using the ``-p`` flag, yo will bind from **host port 8080** to **container port 80**

> NOTE:
  Mapping ports between your host machine and your containers can get confusing. 
  The trick is to remember that **the host port always goes to the left**, and **the container port always goes to the right.**
  Remember it as traffic coming _from_ the host, _to_ the container.

Here is the syntax you will use:

```bash
docker container run --name nginx_server_test_1 -d -p 8080:80  nginx
``` 

By default, the port on the host is mapped to 0.0.0.0, which means all IP addresses. You can specify a particular IP address when you define the port mapping, for example:

```bash
docker container run --name nginx_server_test_2 -d -p 127.0.0.1:8080:80 nginx
``` 

In order to run another instance of nginx, without specifying the host address 8080, -p 80 enables to expose another Nginx but on a randomly available port. 

```bash
docker container run --name nginx_server -d -p 80 nginx
``` 
Check ports with "docker ps" command

# stopping/starting/killing a container
To stop cleanly a container:
```bash
docker container stop nginx_server
```

To start a stopped container:
```bash
docker container start nginx_server
```

To restart a container:
```bash
docker container restart nginx_server
```

To stop imediately a container: (to apply on instance already created)
```bash
docker container kill nginx_server_test_1
```

To remove container:
```bash
docker container stop nginx_server_test_2
```

To remove stopped containers
```bash
docker container prune
```