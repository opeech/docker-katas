# Docker publish

You should have a Docker Hub account to publish images. 
The account is free, and you can create it here: https://hub.docker.com/

Once you have an account, run the login command and fill the username and password to be able publishing images:

```bash
docker login
```

Publishing your image is easy. Just run the following command in the root folder of your project, and replace the account value with your Docker Hub username.

```bash
docker image build -t <my_account>/webserver-image:1.0 .
```

That creates a new image, ready to be deployed for your account. Use the next command to publish it, and don’t forget to use your Docker Hub username instead of the account value.

```bash
docker push <my_account>/webserver-image:1.0
```


The process should be high-speed, and in a few seconds, your image is going to be public and available for use.


To run it locally by utilising the following command:

```bash
docker run -p 3000:80 <my_account>/webserver-image:1.0
```

To quickly test the container and automatically clean everything up once it got stopped, you can add the--rm switch:

```bash
docker run -p 3000:80 --rm <my_account>/webserver-image:1.0
```

Finally, to use it in Dockerfile, just point to published version:
```
FROM webserver-image:1.0
```