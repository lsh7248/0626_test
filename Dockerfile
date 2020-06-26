FROM ubuntu
MAINTAINER leesh7248@gmail.com

RUN apt update
RUN apt install -y nginx
CMD ["nginx", "-g", "daemon off;"]
