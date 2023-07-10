FROM mehran264/website

# Install NGINX
RUN apt-get -y update
RUN apt-get -y install nginx

# Add default configuration
COPY conf/jenkins.conf /etc/nginx/conf.d/jenkins.conf
COPY conf/nginx.conf /etc/nginx/nginx.conf
RUN rm /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf
COPY . /usr/share/nginx/html
COPY conf /etc/nginx
EXPOSE 80

CMD ["nginx"]

