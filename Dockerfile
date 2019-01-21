FROM nginx:alpine
RUN echo "<h1>Hello World</h1>" > index.html
RUN mkdir -p app/data
COPY . /usr/share/nginx/html
WORKDIR /usr/src/app
VOLUME app/data:/usr/src/app 
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
