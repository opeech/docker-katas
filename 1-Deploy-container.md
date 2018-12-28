## Step 1 - Running An Ubuntu Container

The first task is to identify the name of the Docker Image which is configured to run Ubuntu.

With Docker, all containers are started based on a Docker Image. 

These images contain everything required to launch the process; the host doesn't require any configuration or dependencies.

You can find existing Ubuntu image at registry.hub.docker.com/ or by using this command:

```bash
docker search ubuntu
```