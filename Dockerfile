# Use a lightweight image with Nginx installed.
FROM nginx:alpine

# Copy this repository's Nginx configuration into the container.
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy the sample page to Nginx's public directory.
COPY html/ /usr/share/nginx/html/

# Document that the container listens on port 80.
EXPOSE 80
