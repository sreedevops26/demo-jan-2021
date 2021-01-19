FROM ubuntu
RUN apt-get update -y
RUN apt-get install apache2 -y
#RUN systemctl enable nginx
ADD ./index.html /usr/share/nginx/html/
EXPOSE 80
#STOPSIGNAL SIGTERM
#CMD ["nginx", "-g", "daemon off;"]

