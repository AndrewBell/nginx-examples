FROM nginx

COPY nginx.conf /etc/nginx/nginx.conf

COPY html-home /usr/share/nginx/html/home

COPY foo-app /usr/share/nginx/apps/foo

COPY bar-app /usr/share/nginx/apps/bar
