FROM mehran264/website as builder


# Stage 2: Deploy with NGINX
FROM nginx:latest

# Remove the default NGINX configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy the built website from the previous stage to the NGINX directory
COPY --from=builder /app/dist /usr/share/nginx/html

# Copy the custom NGINX configuration file to the container
COPY nginx.conf /etc/nginx/conf.d

# Expose the NGINX port
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
