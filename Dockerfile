FROM nginx

COPY nginx.conf /etc/nginx/nginx.conf

COPY html-home /usr/share/nginx/html
