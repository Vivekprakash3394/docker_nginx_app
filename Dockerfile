FROM centos:centos7
MAINTAINER vivek prakash

RUN yum install -y epel-release && \ 
    yum install -y nginx

COPY nginx.conf /etc/nginx/nginx.conf

COPY index.html /etc/nginx/html/

VOLUME [ "/data/www" ]

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

