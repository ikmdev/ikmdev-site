FROM nginx:stable-alpine3.21-perl

COPY html/* /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/nginx.conf
