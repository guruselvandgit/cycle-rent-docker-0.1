
FROM ubuntu:24.04

RUN apt-get update && apt-get install -y nginx &&  apt-get clean

RUN rm -rf /var/www/html/*

COPY . /var/www/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]





