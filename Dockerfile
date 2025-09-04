FROM arm64v8/nginx:1-alpine-perl

COPY html/* /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/nginx.conf
