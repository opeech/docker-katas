## What Is Docker?

Docker describes themselves as "an open platform for developers and sysadmins to build, ship, and run distributed applications".

## What can I use Docker for?
- Fast, consistent delivery of your applications.
- Responsive deployment and scaling.
- Running more workloads on the same hardware.

## Docker architecture
Docker uses a client-server architecture,and it is composed of :
  - **Daemon**: does the heavy lifting of building, running, and distributing your Docker containers
  - **Client**: communicate with the deamon using a REST API, over UNIX sockets or a network interface.
  - **Hub/Registry**: stores Docker images. 
  - **Image**: is a read-only template with instructions for creating a Docker container.
  - **Container**: run instances of Docker images.
  

![Docker architecture](https://docs.docker.com/engine/images/architecture.svg)
