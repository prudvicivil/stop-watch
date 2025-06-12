FROM ubuntu
COPY . .
RUN apt-get update -y && apt-get install -y nginx
WORKDIR /app
RUN rm -rf /usr/share/nginx/html/*.html
COPY . /usr/share/nginx/html
EXPOSE 80
#ENTRYPOINT ["echo" "Hello"]
CMD ["nginx", "-g", "daemon off;"]
