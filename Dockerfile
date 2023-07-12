FROM mehran264/nginx
EXPOSE 80
# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
