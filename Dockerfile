FROM nginx:latest

COPY ./index.html /usr/share/nginx/html/index.html
COPY ./thien.html /usr/share/nginx/html/thien.html