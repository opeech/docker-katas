# Step 2 - Building a docker image

This step consist in building an image from a DockerFile
![build image](https://lh3.googleusercontent.com/Ttoe47901knaIqMilsBuqoaCfuzkdfCPrR4PrctkuFWHvPEdunXP3lm_d8wUi5Y8M-ooOYlMCd6CmDoj6qyISxzSNk8NkYPtijHY2ZOIQEnecvvpxUj5Ot0vNCpfQW2g9LTdafgL28LeTMKI0AJb5AkFBwYD7JT82p6uTbaK3jJGwtkJub5N9HRe4rMhb7r6QoKFEsbAr2aVCOOA3-XQeTatRvJHPsiVJmOc-5MYwwjHBqhcLr-ohEXBwJraQPpax3uPaXvgoP19k_c88AUSqAztuIfW3_2I05hMxu1rVoeZVySml4kwoxGQeF5PfaRb2-gRnHzesg6QjyhIzMcdtj-HSfPhopLmbD3kqom48KXNqWjAOcFlbq0L-fiO0rWabmyUtRwRain2JGtPfVSPseB0c7WgM5Q7qyx8l9DDvoUzwqz3PHt4pzX_lppzokWt5VceRdH--riJTnXeTsvg65Q2nggo3C45kwC5vy8xZPRyMVTH-D_ctkBZwi0ivdsHLhzqTWgEJZ2MXyvjzaQWL2XxK70E3RYWu65HzvRGFbjM9rd-CtULXGuPLrgbyMh27R6KVhzRVxJB8aM_mfM_oepb8knGCKZ3BB05Xc0d-n-aCQG5qV3T_iVLBHP4k947qYV_88nrDE92_-eCeZtuzuMl=w1005-h444-no)

```bash
mkdir -p app/data
```


## Create Dockerfile
Docker Images are built based on the contents of a Dockerfile. The Dockerfile is a list of instructions describing how to deploy your application.

Create your Dockerfile for building your image by copying the contents below into the editor.

```
FROM nginx:alpine
RUN echo "<h1>Hello World</h1>" > index.html
RUN mkdir -p app/data
COPY . /usr/share/nginx/html
WORKDIR /usr/src/app
VOLUME app/data:/usr/src/app 
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
```

## Dockerfile commands summary

* `FROM` is always the first item in the Dockerfile. Docker Images start from a base image. This base image is defined as an instruction in the Dockerfile. 
To define a base image we use the instruction FROM <image-name>:<tag>
In this example, our base image is the Alpine version of Nginx. This provides the configured web server on the Linux Alpine distribution.
```docker
FROM nginx:alpine
```

* `RUN`  is to place the full text of the shell command after the `RUN` (e.g., `RUN mkdir /user/local/foo`). This will automatically run in a `/bin/sh` shell. You can define a different shell like this: `RUN /bin/bash -c 'mkdir /user/local/foo'`
```docker
RUN echo "<h1>Hello World</h1>" > index.html
```

* `COPY` copies local files into the container. The files need to be in the same folder (or a sub folder) as the Dockerfile itself. An example is copying the requirements for a python app into the container: `COPY requirements.txt /usr/src/app/`.
```docker
COPY . /usr/share/nginx/html
```

* `EXPOSE` creates a hint for users of an image that provides services on ports.
In this example,  we want our web server to be accessible via port 80.
```docker
EXPOSE 80
```

* `CMD` defines the commands that will run on the image at start-up. Unlike a `RUN`, this does not create a new layer for the image, but simply runs the command. There can only be one `CMD` in a Dockerfile. If you need to run multiple commands, the best way to do that is to have the `CMD` run a script. `CMD` requires that you tell it where to run the command, unlike `RUN`. So example `CMD` commands would be:
```docker
  CMD ["nginx", "-g", "daemon off;"]
```
here, we run `nginx -g daemon off;`

* `WORKDIR` specifies the working directory inside the image, during its construction, and when launching the
container
```docker
  WORKDIR /usr/src/app
```

* `VOLUME` allows to do bi-directional mapping between the host directory and the container for sharing data.

* `ENV` defines an environment variable that will be available when building the image and executing the
container

* `ADD` should only be used if you want to copy and unpack a tar file into the image. In any other case, use `COPY`.
Not used in this example.


## Docker Ignore
To prevent sensitive files or directories from being included by mistake in images, you can add a file named .dockerignore.

 
## Build Docker Image
The build command executes each instruction within the Dockerfile. The result is a built Docker Image that can be launched and run your configured app.

The build command takes in some different parameters. The format is docker build -t <build-directory>. The -t parameter allows you to specify a friendly name for the image and a tag, commonly used as a version number. This allows you to track built images and be confident about which version is being started.

```bash
docker build -t webserver-image:v1 .
````

To see list of images on the host:
```bash
docker images
```

The built image will have the name webserver-image with a tag of v1.


## Launch the Docker 
Image
With the image successfully created, you can now launch the container in the same way we described in the first scenario.

Launch an instance of your newly built image using either the ID result from the build command or the friendly name you assigned it.

NGINX is designed to run as a background service so you should include the option -d. To make the web server accessible, bind it to port 80 using p 80:80

For example:

```bash
docker run -d -p 8080:80 webserver-image:v1
```

You can access the launched web server via the hostname docker. After launching the container, the command curl -i http://docker will return our index file via NGINX and the image we built.


Head over to `http://localhost:80` or your server's URL and your app should be live.
