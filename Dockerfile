FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y
RUN apt-get install apache2 -y
#RUN systemctl enable nginx
ADD ./index.html /var/www/html/
EXPOSE 80
#STOPSIGNAL SIGTERM
#CMD ["nginx", "-g", "daemon off;"]

