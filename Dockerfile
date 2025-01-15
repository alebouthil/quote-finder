# Base container for the server
FROM webdevops/php-nginx

# Copy web app files to the html file directory of the server container
COPY src/* app/

# Copy nginx configuration to container
COPY nginx-conf.conf opt/docker/etc/nginx/conf.d/

