FROM mehran264/website AS base
FROM nginx 
RUN rm /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf
COPY . /usr/share/nginx/html
COPY conf /etc/nginx
