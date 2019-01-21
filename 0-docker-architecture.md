## What Is Docker?

Docker describes themselves as "an open platform for developers and sysadmins to build, ship, and run distributed applications".

From using FTP or other old tools:
![old](https://lh3.googleusercontent.com/TDOiZkpe8J775Mtz46_pw6KNTgao9xnH-hx4e4xx3qty6rd5wNKRIYp4UXJhUtwwJC-_cTbxD7STfkvhq-jmASQGctvlVOcMttH1XHOSpNNeV-ueE22AMNkfcQIhyWAGi6Fw0hOtKKuNZ063rImX91BIW_M6gnUxdKDPV0dcPspIyDJfAETaRdMBJRouGjMBYGKMbek7mU4opTasGdiGp-O_8M1Bb173AgPFZlP0FKVQEk27EZNFbrX9ITEXY29kbaLkxWAzWJhVx6Xp-zXJj3eXV6S1FDAe9Q6FU775NDDpQS_AdyUAOSl7eG_TNNZp3bnwUY_Tsl5-6wCZlfP9hNrwi7t3LZzpbUOe_8vf9wXZXku6bM_mcto3OU0Y86xrJicX0SxxY5P9_s7nY4J-BnaQERsVDb-o0CNqLT9ygmNFplnIKiX0SOUa9Axw6d8CaF5cf9vtkTOAubKXkAc5AuWXv0ln6IlAj-n2LvJnJ_uAWrOXx9rKI2fRKfXu00WEvXFEJkD7b4gfLzMwYnWWxGNziwnnf9011RltkYovsRnDG_IWNMOMR27_rrXjxzitDLeoJcIxPG7z1QloYPsTaXPemM5f_Z1x0U12TVZik7zrD0Tt89FCigQlNtkz3TuoAwlBSWr17CPCbAk3nEKe-ssF=w1317-h735-no)
To using docker containers:
![new](https://lh3.googleusercontent.com/2ap81fQs8JNp0fXkFa8-YSniZY-1VCYBKC8OKgaC8uWAaCfIxrCbsSwYkdWBGAcUa3ShdiLLJMZNMMgN3PiAcgS3NRXa5RVOEvgU1WrY1LS2LfTwg8evL_Y4mp1dJSaZmL7lPfWN4g2e1r1fd9K3pewUGsLSXeeWo4iTZX5J5ox2lg7BSle4SEuqNAYrlQeGjZCAvSPZeeAftEApOp4CRJT6ZxeDPAGEsQqhIf4A7YyNqOL6s4aG6ugDrshZYABWZnZ3MqfDoATXE2ifz6XYGTxM4O-w6LLQQaGQsa8d3TtA-mFmzf_qHatHxuY_tiS2Tbk0tROgutUou8ruh-F-y-R1J7pGQH4MHr4QZy2oJDx7knHGQ3QLUt9utHYoIjlbEapm9Anf-uHIsEXNc8HJTg-A9Oalg5-UXs4_77q5qEUc4KenQUmNoOeo3PNYJ5Gz8OKlLFIHP5d3JRwJQgSJJQdOq3LzbrO_Tmvnp8JwJTw7vBN954noYvn3YvNX5tL7sMQYizC7ruIaOyvQR_-SHbD2J1AbKkVxNeAeKzPikOtAUKRr9xhMrDTKqXBhJ_6iRHa3NOs61zwe44XHb0bhrUTZ6YTnLoJVLS3dQHfInCxMDy5-wgXrmSr6coF2ELYn-h9yNhS27ZC6S9X-dDILtdhp=w1333-h746-no)

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


## Community (December 2017)
  - 300+ Meetups Docker in 81 countries.
  - 3000+ Contributors.
  - 13.000+ Github forks.
  - 46.000+ Github stars.
  - 100.000+ Docker based projects.

## Concurrence
  - CoreOS RKT (Rocket).
  - Red Hat Project Atomic.
  - Google LMCTFY.
  - Apcera Kurma, Canonical LXD, Turbo containers, Microsoft Drawbridge.

## Docker vs VM
 - Containers Are More Agile than VMs
 - Containers enable Hybrid and Multi-Cloud Adoption
 - Integrate Containers with Your Existing IT Processes
 - Containers save on VM Licensing
 
Docker is not a technology that makes VMs completely obsolete; both are often presented as
complementary, even though they may be opposed.

![Docker vs VM](https://i2.wp.com/blog.docker.com/wp-content/uploads/Blog.-Are-containers-..VM-Image-1-1024x435.png)




